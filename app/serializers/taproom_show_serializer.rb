class TaproomShowSerializer < ActiveModel::Serializer
  attributes :id,
    :taproom_name, 
    :taproom_address, 
    :taproom_city, 
    :taproom_state, 
    :taproom_zipcode, 
    :taproom_monday_hours,
    :taproom_tuesday_hours, 
    :taproom_wednesday_hours, 
    :taproom_thursday_hours,
    :taproom_friday_hours, 
    :taproom_saturday_hours, 
    :taproom_sunday_hours, 
    :taproom_description, 
    :taproom_dog_policy, 
    :taproom_kitchen, 
    :taproom_patio, 
    :taproom_logo, 
    :taproom_image_url, 
    :taproom_instagram, 
    :taproom_twitter, 
    :taproom_facebook, 
    :taproom_official_webpage,
    :current_user

  has_many :taproom_reviews
  has_many :taproom_images

  def reviews
    object.reviews.reverse()
  end
end