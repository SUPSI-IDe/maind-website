class JsonGrouperController
	def get(item, prop)
		if item.is_a? Hash
			return item[prop]
		else
			return item.send prop
		end
	end

	def lookup(item, split_path)
		if split_path.length > 1
			return lookup(get(item, split_path.shift), split_path)
		else
			return get(item, split_path[0])
		end
	end

	def project(item, properties)
		if properties.size > 1
			proj = Hash.new
			properties.each do |p|
				split_path = p.split '.'
				proj[p] = lookup item, split_path
			end
			return proj 	#{"url"=>"...", "data.title"=>"..."}
		else
			return item.send(properties[0])
		end
	end

	def push_to_path(hash, path, value)
		path.each_with_index do |p, i|
			if i < path.size - 1
				if hash[p].nil?
					hash[p] = Hash.new
				end
				hash = hash[p]
			else
				if hash[p].nil?
					hash[p] = Array.new
				end
				hash[p].push value
			end
		end
	end

	def transform(context, data)
		raw = data['data']
		groups = data['groupBy']
		projection = data['projection']

		grouped = Hash.new

		raw.each do |item|
			path = Array.new
			groups.each do |g|
				if g == 'tags' && item[g] != ["featured"]
					path.push 'normal'
				elsif g == 'tags' && item[g] == ["featured"]
					path.push 'featured'
				else  
					path.push item[g]
				end
			end
			push_to_path grouped, path, project(item, projection)
		end

		data['grouped'] = grouped

		return data
	end

end