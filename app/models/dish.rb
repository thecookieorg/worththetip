class Dish < ActiveRecord::Base
	validates :restaurant_id, presence: true
	belongs_to :restaurant
	has_many :reviews
end
