class CreateTaproomReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :taproom_reviews do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.string :overall_rating, null: false
      t.string :service_rating
      t.string :ambience_rating
      t.string :group_accommodations_rating
      t.string :favorite_beer
      t.string :photo

      t.belongs_to :user, null: false
      t.belongs_to :taproom, null: false

      t.timestamps null: false
    end
  end
end
