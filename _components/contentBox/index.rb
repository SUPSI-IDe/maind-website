class ContentBoxController
	def transform(context, data)
		site = context.registers[:site]

		if data['item']['image'] && !File.exists?(data['item']['image'])
			puts "Warning: Image #{data['item']['image']} does not exist"
			data['item'].delete 'image'
		end

		return data
	end
end