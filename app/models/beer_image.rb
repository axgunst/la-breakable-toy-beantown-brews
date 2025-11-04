class BeerImage < ApplicationRecord
  validates :beer_image_url, presence: true

  belongs_to :beer

end 