class CreateBeerStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :beer_styles do |t|
      t.string :beer_style_name, null: false
      t.string :beer_style_description, null: false
    end
  end
end
