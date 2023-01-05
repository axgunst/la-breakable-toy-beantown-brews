class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.string :name, null: false 
      t.string :logo, null: false
      t.string :description, null: false
      t.string :image_url
      t.string :official_webpage
      t.string :instagram
      t.string :twitter
      t.string :facebook
  
      t.belongs_to :user, null: false

      t.timestamps null: false
    end
  end
end
