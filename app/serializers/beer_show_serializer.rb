class BeerShowSerializer < ActiveModel::Serializer
  attributes :id,
    :name, 
    :style, 
    :abv, 
    :description, 
    :brewer, 
    :image_url,
    :current_user

  has_many :beer_reviews

  def reviews
    object.reviews
  end
end