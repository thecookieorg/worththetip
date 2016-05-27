class Restaurant < ActiveRecord::Base
	has_many :dishes
	has_many :reviews, dependent: :destroy

	extend FriendlyId
  	friendly_id :name, use: [:slugged, :finders] # had to add use: like this, instead of just :slugged as it wasn't working from some strange reason

	geocoded_by :address   # can also be an IP address
	after_validation :geocode          # auto-fetch coordinates

	def self.search(search)
	  where("name LIKE ?", "%#{search}%") 
	end
end
