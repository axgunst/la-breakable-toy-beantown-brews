class CreateTaprooms < ActiveRecord::Migration[5.2]
  def change
    create_table :taprooms do |t|
      t.string :name, null: false
      t.string :logo
      t.string :image_url
      t.string :description
      t.string :address
      t.string :city, null: false
      t.string :state, null: false
      t.string :zipcode, null: false
      t.string :monday_hours
      t.string :tuesday_hours
      t.string :wednesday_hours
      t.string :thursday_hours
      t.string :friday_hours
      t.string :saturday_hours
      t.string :sunday_hours
      t.string :dogs
      t.string :kitchen
      t.string :patio
      t.string :official_webpage
      t.string :instagram
      t.string :twitter
      t.string :facebook
    
      t.belongs_to :user, null: false
      t.belongs_to :brand

      t.timestamps null: false
    end
  end
end
