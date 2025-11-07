class BeerReview < ApplicationRecord
  validates :beer_review_title, presence: true 
  validates :beer_review_name, presence: true
  validates :beer_review_body, presence: true
  validates :beer_review_overall_rating, presence: true

  belongs_to :user
  belongs_to :beer

  # mount_uploader :photo, TaproomReviewImageUploader
  mount_uploader :beer_image, BeerReviewImageUploader

end