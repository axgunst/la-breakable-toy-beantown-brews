class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.string :name, null: false
      t.string :style, null: false
      t.string :abv
      t.string :description
      t.string :brewer, null: false
      t.string :iamge_url


      t.belongs_to :taproom, null: false
      t.belongs_to :user, null: false

      t.timestamps null: false
    end
  end
end
