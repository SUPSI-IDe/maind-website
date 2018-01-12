class CheckFileExistController
	def transform(context, data)
		site = context.registers[:site]

		#check if image path is local
		unless data['ogimage'].include? '/'
			if context['page']['dir']
				data['ogimage'] = File.join(context['page']['dir'], data['ogimage']).sub(/^\//, '')
			end
		end

		data['ogimage'].sub! '.md', '_h.jpg'

		puts ! !File.exists?(data['ogimage'])

		if ! !File.exists?(data['ogimage'])
			data['ogimage'].sub! '_h.jpg', '.jpg'
		end

		puts data['ogimage']

		return data
	end
end