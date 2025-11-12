class BeerReviewSerializer < ActiveModel::Serializer
  attributes :id, 
  :beer_review_title, 
  :beer_review_name, 
  :beer_review_body,
  :beer_review_overall_rating,
  :beer_review_pour,
  :beer_review_image,
  :created_at

  def created_at
    object.created_at.strftime("%b %d %Y")
  end

  def photo
    # if object.photo.blank?
      return nil
    else 
      return object.photo.url
    end
  end 

  belongs_to :user
  belong_to :beer
  
end