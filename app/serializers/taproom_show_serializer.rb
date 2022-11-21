class TaproomShowSerializer < ActiveModel::Serializer
  attributes :id,
    :name, 
    :address, 
    :city, 
    :state, 
    :zipcode, 
    :monday_hours,
    :tuesday_hours, 
    :wednesday_hours, 
    :thursday_hours,
    :friday_hours, 
    :saturday_hours, 
    :sunday_hours, 
    :description, 
    :dogs, 
    :kitchen, 
    :patio, 
    :logo, 
    :image_url, 
    :instagram, 
    :twitter, 
    :facebook, 
    :official_webpage,
    :current_user

  has_many :taproom_reviews

  def reviews
    # object.reviews.reverse()
    object.reviews
  end
end