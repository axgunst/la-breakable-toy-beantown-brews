class Taproom < ApplicationRecord
  validates :name, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true

  has_many :taproom_reviews
  has_many :beers

  belongs_to :user
end 