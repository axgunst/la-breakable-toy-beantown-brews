class BeerReview < ApplicationRecord
  validates :title, presence: true 
  validates :name, presence: true
  validates :body, presence: true
  validates :overall_rating, presence: true
  
  belongs_to :user
  belongs_to :beer

  mount_uploader :photo, BeerReviewImageUploader
  
end