class CreateBeerReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :beer_reviews do |t|
      t.string :title, null: false
      t.string :name, null: false
      t.string :overall_rating, null: false
      t.boolean :container
      t.string :body, null: false
      t.string :image_url

      t.belongs_to :beer, null: false
      t.belongs_to :user, null: false
      
      t.timestamps null: false
    end
  end
end
