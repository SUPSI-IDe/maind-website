module Maind
	class CollectionsGenerator < Jekyll::Generator
		def generate (site)
			site.collections['homepage'] = Jekyll::Collection.new(site, 'homepage')

			site.collections.each do |collection|
				if collection[0] != 'homepage'
					collection[1].docs.each do |item|
						if item.data['tags'].any? { |tag| tag === 'homepage'}
							site.collections['homepage'].docs << item
						end
					end
				end
			end
		end
	end

	class FeaturedImageGenerator < Jekyll::Generator
		def generate (site)
			site.collections.each do |collection|
				collection[1].docs.each do |item|
					if item.data['featuredImage']
						item.data['featuredImageUrl'] = item.relative_path.gsub(/\.md/, '/' + item.data['featuredImage'])
					end
				end
			end
		end
	end
end