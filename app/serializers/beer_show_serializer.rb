class BeerShowSerializer < ActiveModel::Serializer
  attributes :id,
    :beer_name, 
    :beer_style, 
    :beer_abv, 
    :beer_description, 
    :beer_brewer, 
    :beer_image_url,
    :current_user

  has_many :beer_reviews
  has_many :beer_images

  def reviews
    object.reviews.reverse()
  end
end