class TaproomSerializer < ActiveModel::Serializer
  attributes 
  :id, 
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
  :official_webpage
  
  belongs_to :user
end