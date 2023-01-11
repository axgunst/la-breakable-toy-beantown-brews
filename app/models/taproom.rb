class Taproom < ApplicationRecord
  validates :name, presence: true
  validates :brand, presence: true
  validates :logo, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zipcode, presence: true

  has_many :taproom_reviews

  belongs_to :user
  belongs_to :brand
end 