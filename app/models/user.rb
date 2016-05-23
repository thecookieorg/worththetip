class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   extend FriendlyId
   friendly_id :nickname, use: [:slugged, :finders] # had to add use: like this, instead of just :slugged as it wasn't working from some strange reason
end
