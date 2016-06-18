require 'yelp'

class Yelp::Client

	client = Yelp::Client.new({ 
		consumer_key: 'd5J7bAnn44C5VaRE0pQf8A',
	  consumer_secret: 'ccT4a-zm6IiOmVIkvcjn7iU2nD0',
	  token: '2yVQjQ0orkpLq1u50qjNocMPc9BXmJdf',
	  token_secret: 'RUcm0YfDCwBbx7gIUFUsUHLIZOc'
	})

	# Yelp.client.configure do |config|
	#   config.consumer_key = YOUR_CONSUMER_KEY
	#   config.consumer_secret = YOUR_CONSUMER_SECRET
	#   config.token = YOUR_TOKEN
	#   config.token_secret = YOUR_TOKEN_SECRET
	# end

	# @@url = "https://api.yelp.com/v2/search"

	def search
	  parameters = { 
	  	term: "pizza",
	  	limit: 16 
	  }

	  render json: Yelp.client.search('New York City', parameters)
	end
end

# this will make a successful query for mexican food within 1000 meters of nycda

# http://api.yelp.com/v2/search/?term=mexican&location=90 John St, New York, NY, 10038&radius_filter=1000