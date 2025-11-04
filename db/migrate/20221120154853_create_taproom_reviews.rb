class CreateTaproomReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :taproom_reviews do |t|
      t.string :taproom_review_title, null: false
      t.string :taproom_review_body, null: false
      t.string :taproom_review_overall_rating, null: false
      t.string :taproom_review_service_rating
      t.string :taproom_review_ambience_rating
      t.string :taproom_review_group_accommodations_rating
      t.string :taproom_review_favorite_beer
      t.string :taproom_review_image

      t.belongs_to :user, null: false
      t.belongs_to :taproom, null: false

      t.timestamps null: false
    end
  end
end
