class CreateTaproomImages < ActiveRecord::Migration[5.2]
  def change
    create_table :taproom_images do |t|
      t.string :taproom_image_url, null: false
      t.string :taproom_image_caption
      
      t.belongs_to :taproom, null: false
      
      t.timestamps null: false
    end
  end
end
