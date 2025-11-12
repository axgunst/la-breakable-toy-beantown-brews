class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.string :beer_name, null: false
      t.string :beer_brand, null: false
      t.string :beer_image_url
      t.string :beer_description
      t.string :beer_style, null: false
      t.string :beer_abv
    

      t.belongs_to :user, null: false
      t.belongs_to :brand, null: false
      
      t.timestamps null: false
    end
  end
end
