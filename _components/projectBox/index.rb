class ProjectBoxController
	def transform(context, data)

		item = data['project']

		if item['tags'].include?('featured')
			item['tags'] = 'featured'
		else
			item['tags'] = ''
		end

		item['image'] = File.join(File.dirname('_' + item.url.sub(/^\//,'')), 'main.jpg')
		item['superTitle'] = item['author']
		item['strip'] = item['module']
		item['classname'] = item['module'] + ' y' + item['year'].sub(/\//,'_') + ' ' + item['tags']
		data['item'] = item
		return data
	end
end