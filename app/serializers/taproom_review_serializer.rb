class TaproomReviewSerializer < ActiveModel::Serializer
  attributes :id, 
  :taproom_review_title, 
  :taproom_review_body, 
  :taproom_review_overall_rating, 
  :taproom_review_service_rating,
  :taproom_review_ambience_rating, 
  :taproom_review_group_accommodations_rating,
  :taproom_review_favorite_beer, 
  :taproom_review_image,
  :created_at

  def created_at
    object.created_at.strftime("%b %d %Y")
  end

  def photo
    if object.photo.blank?
      return nil
    else 
      return object.photo.url
    end
  end 

  belongs_to :user 
  belongs_to :taproom
  
end