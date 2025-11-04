class CreateTaprooms < ActiveRecord::Migration[5.2]
  def change
    create_table :taprooms do |t|
      t.string :taproom_name, null: false
      t.string :taproom_brand, null: false
      t.string :taproom_logo, null: false
      t.string :taproom_image_url
      t.string :taproom_description
      t.string :taproom_address
      t.string :taproom_city, null: false
      t.string :taproom_state, null: false
      t.string :taproom_zipcode, null: false
      t.string :taproom_directions
      t.string :taproom_parking
      t.string :taproom_monday_hours
      t.string :taproom_tuesday_hours
      t.string :taproom_wednesday_hours
      t.string :taproom_thursday_hours
      t.string :taproom_friday_hours
      t.string :taproom_saturday_hours
      t.string :taproom_sunday_hours
      t.string :taproom_reservations
      t.string :taproom_reservations_link
      t.string :taproom_kitchen
      t.string :taproom_patio
      t.string :taproom_dog_policy
    
      t.belongs_to :user, null: false
      t.belongs_to :brand

      t.timestamps null: false
    end
  end
end
