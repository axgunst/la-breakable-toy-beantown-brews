class Beer < ApplicationRecord
  validates :name, presence: true 
  validates :style, presence: true
  validates :brewer, presence: true

  has_many :beer_reviews
  has_many :beer_images
  
  belongs_to :user
  belongs_to :brand
  
end