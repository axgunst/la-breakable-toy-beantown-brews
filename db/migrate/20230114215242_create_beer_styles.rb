class CreateBeerStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :beer_styles do |t|
      t.string :name, null: false
      t.string :description, null: false 
    end
  end
end
