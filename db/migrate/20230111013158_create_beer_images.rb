class CreateBeerImages < ActiveRecord::Migration[5.2]
  def change
    create_table :beer_images do |t|
      t.string :beer_image_url, null: false
      t.string :beer_image_caption
      
      t.belongs_to :beer, null: false
      
      t.timestamps null: false
    end
  end
end
