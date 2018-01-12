class ContentBoxController
	def transform(context, data)
		site = context.registers[:site]

		#puts "Image loaded: #{data['item']['image']}"
		#puts "Image url loaded: #{data['item']['url']}"

		if data['item']['image'].include? '_h.jpg'
			data['item']['image'].sub! '_h.jpg', '.jpg'
		end

		if data['item']['image'] && !File.exists?(data['item']['image'])
			puts "Warning: Image #{data['item']['image']} does not exist"
			data['item'].delete 'image'
		end

		return data
	end
end