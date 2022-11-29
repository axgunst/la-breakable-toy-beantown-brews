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

  belongs_to :user 
  
end