class Brand < ApplicationRecord
  validates :brand_name, presence: true 
  validates :brand_logo, presence: true
  validates :brand_description, presence: true

  
  belongs_to :user
  has_many :taprooms
  has_many :beers
  has_many :brand_images
 
end