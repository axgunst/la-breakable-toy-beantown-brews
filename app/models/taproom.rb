class Taproom < ApplicationRecord
  validates :taproom_name, presence: true
  validates :taproom_brand, presence: true
  validates :taproom_logo, presence: true
  validates :taproom_city, presence: true
  validates :taproom_state, presence: true
  validates :taproom_zipcode, presence: true

  has_many :taproom_reviews
  has_many :taproom_images

  belongs_to :user
  belongs_to :brand
end 