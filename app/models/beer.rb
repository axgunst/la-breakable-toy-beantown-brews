class Beer < ApplicationRecord
  validates :name, presence: true 
  validates :style, presence: true
  validates :brewer, presence: true

  has_many :beer_reviews
  
  belongs_to :user
  belongs_to :taproom
  
end