class ImgBoxController
	def transform(context, data)
		site = context.registers[:site]

		#check if image path is local
		unless data['image'].include? '/'
			if context['page']['dir']
				data['image'] = File.join(context['page']['dir'], data['image']).sub(/^\//, '')
			end
		end

		if !File.exists?(data['image'])
			puts "Image doesn't exist: #{data['image']}"
			data.delete 'image'
		end

		return data
	end
end