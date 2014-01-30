module JobsHelper

	# Fix this path
	City.data_path = './lib/cities/'

	# Return all the valid job types
	def valid_types
		[['Heltid'], ['Deltid'], ['Extrajobb'], ['Sommarjobb']]
	end

	# Return all the cities in Sweden
	def cities
		City.cities_in_country('SE')
	end

end