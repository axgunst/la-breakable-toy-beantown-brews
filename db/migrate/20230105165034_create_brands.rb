class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.string :brand_name, null: false 
      t.string :brand_logo, null: false
      t.string :brand_image_url
      t.string :brand_description, null: false
      t.string :brand_official_webpage
      t.string :brand_instagram
      t.string :brand_twitter
      t.string :brand_facebook
      t.string :brand_tours
      t.string :brand_tour_tickets
  
      t.belongs_to :user, null: false

      t.timestamps null: false
    end
  end
end
