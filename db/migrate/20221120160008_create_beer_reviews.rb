class CreateBeerReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :beer_reviews do |t|
      t.string :beer_review_title, null: false
      t.string :beer_review_body, null: false
      t.string :beer_review_overall_rating, null: false
      t.string :beer_review_pour
      t.string :beer_review_image

      t.belongs_to :user, null: false
      t.belongs_to :beer, null: false
      
      t.timestamps null: false
    end
  end
end
