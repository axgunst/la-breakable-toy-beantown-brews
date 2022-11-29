class TaproomReviewSerializer < ActiveModel::Serializer
  attributes :id, 
  :title, 
  :body, 
  :overall_rating, 
  :service_rating,
  :ambience_rating, 
  :group_accommodations_rating,
  :favorite_beer, 
  :photo,
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
  
end