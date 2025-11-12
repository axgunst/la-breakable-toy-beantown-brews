class TaproomReview < ApplicationRecord
  validates :taproom_review_title, presence: true 
  validates :taproom_review_body, presence: true
  validates :taproom_review_overall_rating, presence: true

  
  belongs_to :user
  belongs_to :taproom

  # mount_uploader :photo, TaproomReviewImageUploader
  mount_uploader :taproom_image, TaproomReviewImageUploader
 
end