module RespImage
	class RespImage < Liquid::Tag
		def initialize(tag_name, markup, tokens)
			super
			@markup = markup
		end

		def render(context)
			config = Jekyll.configuration({})['respimage']
			site = context.registers[:site]
			render_markup = Liquid::Template.parse(@markup).render(context).gsub(/\\\{\\\{|\\\{\\%/, '\{\{' => '{{', '\{\%' => '{%')
			markup = /^(?:(?<preset>[^\s.:\/]+)\s+)?(?<image_src>[^\s]+\.[a-zA-Z0-9]{3,4})\s*(?<gravity>c|[sn][ew]?)?\s*(?<html_attr>[\s\S]+)?$/.match(render_markup)
			
			if markup[:gravity] === nil 
				gravity = :center
			else 
				gravity = case markup[:gravity].downcase
				when 'n' then :north
				when 'nw' then :north_west
				when 'ne' then :north_east
				when 's' then :south
				when 'sw' then :south_west
				when 'se' then :south_east
				when 'c' then :center
				else 
					puts "Warning gravity unkown: " + markup[:gravity]
					:center
				end
			end


			if config && config[markup[:preset]]

				config = config[markup[:preset]]
				path = markup[:image_src]

				dirname = File.dirname(path)
				basename = File.basename(path, ".*")
				extname = File.extname(path)

				files = config['ppi'].map { |density| { density: density, w: density * config['base']['w'], h: config['base']['h'] ? density * config['base']['h'] : false } }
				
				mtime = File.mtime(path).to_i().to_s(16)

				files.each do |f|
					f[:filename] = "#{basename}_#{f[:w]}x#{f[:h]}_#{mtime}_#{gravity}#{extname}"
					f[:url] = "/#{dirname.sub(/^_/,'')}/#{f[:filename]}"
					dest = File.join(site.dest, dirname.sub(/^_/,''), f[:filename])
					Utils.process(path, dest, f[:w], f[:h], gravity)
					site.keep_files << dest
				end

				srcset = files.map { |file| "#{file[:url]} #{file[:density]}x" }.join(', ')

				return "<img src=\"#{files[0][:url]}\" srcset=\"#{srcset}\" width=\"#{config['base']['w']}\" height=\"#{config['base']['h']}\">"
			end
		end
	end
end