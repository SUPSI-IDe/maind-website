class TwoPaneFilterController
	def transform(context, data)
		@@filter_id = 0 unless defined? @@filter_id
		@@filter_id += 1

		data['id'] = @@filter_id
		
		return data
	end
end