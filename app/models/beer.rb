class Beer < ApplicationRecord
  validates :beer_name, presence: true 
  validates :beer_style, presence: true
  validates :beer_brewer, presence: true

  has_many :beer_reviews
  has_many :beer_images
  
  belongs_to :user
  belongs_to :brand
  
end