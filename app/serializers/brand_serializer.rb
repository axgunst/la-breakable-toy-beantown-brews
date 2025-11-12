class BrandSerializer < ActiveModel::Serializer
  attributes :id, 
  :brand_name, 
  :brand_logo, 
  :brand_image_url, 
  :brand_description;
  :brand_official_webpage,
  :brand_instagram, 
  :brand_twitter, 
  :brand_facebook, 
  :brand_tours,
  :brand_tour_tickets,
  :current_user
  
  belongs_to :user
  has_many :taprooms
  has_many :beers
end