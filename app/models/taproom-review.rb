class TaproomReview < ApplicationRecord
  validates :title, presence: true 
  validates :body, presence: true

  belongs_to :taproom
  belongs_to :user
end