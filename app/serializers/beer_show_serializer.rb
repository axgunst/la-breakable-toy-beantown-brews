class BeerShowSerializer < ActiveModel::Serializer
  attributes :id,
    :name, 
    :style, 
    :abv, 
    :description, 
    :brewer, 
    :photo,
    :current_user

  has_many :beer_reviews

  def reviews
    object.reviews.reverse()
  end
end