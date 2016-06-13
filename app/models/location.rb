class Location < ActiveRecord::Base

	geocoded_by :address
	after_validation :geocode

	# def address
	# 	"#{street}" + ", " "#{city}" + ", "  "#{state}" + ", " "#{zip}"
	# end

	# def address_changed?
	#   attrs = %w(street_address city state postal_code country)
	#   attrs.any?{|a| send "#{a}_changed?"}
	# end
end
