class BrandImage < ApplicationRecord
  validates :brand_image_url, presence: true

  belongs_to :user
  belongs_to :brand
end 