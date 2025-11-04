class TaproomImage < ApplicationRecord
  validates :taproom_image_url, presence: true

  belongs_to :user
  belongs_to :taproom

end 