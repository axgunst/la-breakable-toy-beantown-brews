class BeerSerializer < ActiveModel::Serializer
  attributes :id, 
  :beer_name, 
  :beer_style, 
  :beer_description, 
  :beer_abv, 
  :beer_image_url,
  :current_user
  
  belongs_to :user
  belongs_to :brand

  has_many :beer_reviews
  has_many :beer_images

end