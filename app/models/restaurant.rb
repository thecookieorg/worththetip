class Restaurant < ActiveRecord::Base
	extend FriendlyId
  	friendly_id :name, use: [:slugged, :finders] # had to add use: like this, instead of just :slugged as it wasn't working from some strange reason

	geocoded_by :address   # can also be an IP address
	after_validation :geocode          # auto-fetch coordinates
end
