class BrandImage < ApplicationRecord
  validates :image_url, presence: true

  belongs_to :user
  belongs_to :brand
end 