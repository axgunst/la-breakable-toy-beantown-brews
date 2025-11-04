class CreateBrandImages < ActiveRecord::Migration[5.2]
  def change
    create_table :brand_images do |t|
      t.string :brand_image_url, null: false
      t.string :brand_image_caption
      
      t.belongs_to :brand, null: false
      
      t.timestamps null: false
    end
  end
end
