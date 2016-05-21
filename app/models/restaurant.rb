class Restaurant < ActiveRecord::Base
	extend FriendlyId
  	friendly_id :name, use: [:slugged, :finders]

	geocoded_by :address   # can also be an IP address
	after_validation :geocode          # auto-fetch coordinates
end
