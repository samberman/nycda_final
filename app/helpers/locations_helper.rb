module LocationsHelper

	# def render_listing business
	# 	'<div izd="response0" data-coords0="<%= business.location.coordinate.latitude %>, <%= business.location.coordinate.longitude %>" class="results"><div class="photo"><img src="<%= business.image_url %>"><h2><%= business.name %></h2><h4><div class="glyphicon glyphicon-earphone"></div> <%= business.phone %></h4><h4><%= business.location.address %></h4><h4><%= business.location.city %></h4><h4><%= business.location.state_code %></h4><h4><%= business.location.postal_code %></h4><h4>Rating: <%= business.rating %></h4><h4>Review Snippet: <%= business.snippet_text.gsub("\n", " ") %></h4></div>'<%= "," unless @response.businesses.count == n + 1 %>

end
