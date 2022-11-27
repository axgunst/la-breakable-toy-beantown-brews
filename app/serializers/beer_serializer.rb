class BeerSerializer < ActiveModel::Serializer
  attributes :id, 
  :name, 
  :style, 
  :description, 
  :abv, 
  :image_url,
  :current_user
  
  belongs_to :user
  belongs_to :taproom
end