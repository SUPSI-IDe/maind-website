class ImageGalleryController
	def transform(context, data)
		site = context.registers[:site]

		if Dir.exist?(data['path']+"/gallery/")
			data['list'] = Dir.glob(data['path']+"/gallery/*.jpg")
			data['show_gallery'] = true
		else
			data['show_gallery'] = false
			#puts "No gallery folder for the project: #{data['year']} - #{data['cas']} - #{data['title']}"
		end

		return data
	end
end