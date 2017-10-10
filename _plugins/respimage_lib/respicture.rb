module RespImage
	class ResPicture < Liquid::Tag
		def initialize(tag_name, markup, tokens)
			super
			@@cache = Hash.new unless defined? @@cache #volatile 10 seconds cache
			@markup = markup
		end

		
		#find most appropriate file for each configured source
		def find_source_files(confsources, image_main_src)
			dirname = File.dirname(image_main_src)
			basename = File.basename(image_main_src, '.*')
			extname = File.extname(image_main_src)

			sources = confsources.map.with_index do |source, i|
				ret = source.clone

				#fall back to main source if nothing is found
				match = image_main_src 

				#match should be the first existing image coming before the current source
				while i >= 0
					if confsources[i]['suffix']
						tmp = "#{dirname}/#{basename}#{confsources[i]['suffix']}#{extname}"
						if File.exists? tmp
							match = tmp
							break
						end
					else
						# if there's a source that "by configuration" doesn't have an alternate crop
						# the main source should be used
						match = image_main_src
						break
					end

					i = i - 1
				end
				ret['file'] = match
				
				ret
			end

			return sources
		end

		def url(site, dest)
			root = Pathname.new site.dest
			dest = Pathname.new dest

			return '/' + dest.relative_path_from(root).to_s
		end

		def expired?(t)
			(Time.now.to_f - t.to_f).to_i > 10
		end

		def render(context)

			site = context.registers[:site]
			config = site.config['respicture']

			render_markup = Liquid::Template.parse(@markup).render(context).gsub(/\\\{\\\{|\\\{\\%/, '\{\{' => '{{', '\{\%' => '{%')
			markup = /^(?:(?<preset>[^\s.:\/]+)\s+)?(?<image_src>[^\s]+\.[a-zA-Z0-9]{3,4})\s*(?<html_attr>[\s\S]+)?$/.match(render_markup)
			
			cachekey = markup[:preset] + " " + markup[:image_src]
			if !@@cache[cachekey].nil? 
				if !expired? @@cache[cachekey][:time]
					return @@cache[cachekey][:html]
				end
			else
				@@cache[cachekey] = Hash.new
			end


			if config && config[markup[:preset]]
				config = config[markup[:preset]]

				image_main_src = markup[:image_src]
				
				confsources = config['sources']

				sources = find_source_files(confsources, image_main_src)
				ppi = config['ppi']

				htmlsrc = '<picture>'

				#generate various density versions for each source
				sources.each_with_index do |source, i| 
					targetw = i == 0 ? config['query_max'] : confsources[i - 1]['query_min']
					targetw = targetw / 100 * source['vw']
					targetw = targetw.round.to_i
					srcset = ppi.map do |ppi|
						dest = File.join(
							site.dest, 
							File.dirname(source['file']).sub(/^_/, ''), 
							File.basename(source['file'], '.*')  + "_#{targetw}w_#{ppi}x_"  + File.mtime(source['file']).to_i.to_s(16) + File.extname(source['file']))

						realres = (targetw * ppi).round.to_i

						Utils.process(source['file'], dest, realres)
						site.keep_files << dest
						"#{url site, dest} #{ppi}x"
					end

					htmlsrc += '<source srcset="' + srcset.join(', ') + '" '

					if source['query_min']
						htmlsrc += "media=\"(min-width: #{source['query_min']}px)\" "
					end

					htmlsrc += " sizes=\"#{source['vw']}vw\" "

					htmlsrc += '>'
				end

				dest = File.join(
					site.dest, 
					File.dirname(image_main_src).sub(/^_/, ''), 
					File.basename(image_main_src, '.*') \
					 + '_' + File.mtime(image_main_src).to_i.to_s(16) \
					 + File.extname(image_main_src))
				
				Utils.process(image_main_src, dest, config['fallback'])
				site.keep_files << dest

				htmlsrc += "<img src=\"#{url site, dest}\" #{markup[:html_attr]} alt=\"Main project picture\">"
				htmlsrc += '</picture>'

				@@cache[cachekey][:html] = htmlsrc
				@@cache[cachekey][:time] = Time.now
				
				return htmlsrc
			end
		end
	end
end