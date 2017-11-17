class ImgBoxController
	def transform(context, data)
		site = context.registers[:site]

		#check if image path is local
		unless data['image'].include? '/'
			if context['page']['dir']
				data['image'] = File.join(context['page']['dir'], data['image']).sub(/^\//, '')
			end
		end

		if !File.exists?(data['image'].sub! '.jpg', '_h.jpg')
			puts "Horizontal image doesn't exist: #{data['image']}"
			if !File.exists?(data['image'].sub! '_h.jpg', '.jpg')
				puts "Image doesn't exist: #{data['image']}"
				data.delete 'image'
			end
		end

		puts data['image']

		return data

	end
end