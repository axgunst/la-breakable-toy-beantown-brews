class BeerSerializer < ActiveModel::Serializer
  attributes :id, 
  :name, 
  :style, 
  :abv, 
  :description, 
  :brewer, 
  :image_url,
  
  belongs_to :user
end