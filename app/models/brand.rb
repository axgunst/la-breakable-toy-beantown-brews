class Brand < ApplicationRecord
  validates :name, presence: true 
  validates :logo, presence: true
  validates :description, presence: true

  
  belongs_to :user
  has_many :taprooms
  has_many :beers
  has_many :brand_images
 
end