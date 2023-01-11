class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.string :name, null: false
      t.string :brand, null: false
      t.string :image_url
      t.string :description
      t.string :style, null: false
      t.string :abv
    

      t.belongs_to :user, null: false
      t.belongs_to :brand, null: false
      
      t.timestamps null: false
    end
  end
end
