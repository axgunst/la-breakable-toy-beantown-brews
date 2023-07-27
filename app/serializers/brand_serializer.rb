class BrandSerializer < ActiveModel::Serializer
  attributes :id, 
  :name, 
  :logo, 
  :image_url, 
  :description;
  :official_webpage,
  :instagram, 
  :twitter, 
  :facebook, 
  :tours,
  :tour_tickets
  
  :current_user
  
  belongs_to :user
  has_many :taprooms
  has_many :beers
end