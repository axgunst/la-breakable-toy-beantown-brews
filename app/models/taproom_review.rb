class TaproomReview < ApplicationRecord
  validates :title, presence: true 
  validates :body, presence: true
  validates :overall_rating, presence: true

  
  belongs_to :user
  belongs_to :taproom

  mount_uploader :photo, TaproomReviewImageUploader
 
end