class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :brands
  has_many :brand_images
  has_many :taprooms
  has_many :taproom_reviews
  has_many :taproom_images
  has_many :beers
  has_many :beer_reviews
  has_many :beer_images
end
