class Search < ActiveRecord::Base
	def self.search(search)
		if search
			find(:all, :conditions => [{current_location => "#{current_location}"}, {term => "#{term}"}, {radius_filter => "#{radius_filter}"}])
		else 
			find(:all)
		end		
	end
end
