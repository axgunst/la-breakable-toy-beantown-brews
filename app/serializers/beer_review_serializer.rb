class BeerReviewSerializer < ActiveModel::Serializer
  attributes :id, 
  :title, 
  :name, 
  :overall_rating,
  :pour,
  :body,
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
  belong_to :beer
  
end