# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_01_11_013220) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beer_images", force: :cascade do |t|
  end

  create_table "beer_reviews", force: :cascade do |t|
    t.string "title", null: false
    t.string "body", null: false
    t.string "overall_rating", null: false
    t.string "pour"
    t.string "photo"
    t.bigint "user_id", null: false
    t.bigint "beer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["beer_id"], name: "index_beer_reviews_on_beer_id"
    t.index ["user_id"], name: "index_beer_reviews_on_user_id"
  end

  create_table "beers", force: :cascade do |t|
    t.string "name", null: false
    t.string "brand", null: false
    t.string "image_url"
    t.string "description"
    t.string "style", null: false
    t.string "abv"
    t.bigint "user_id", null: false
    t.bigint "brand_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_beers_on_brand_id"
    t.index ["user_id"], name: "index_beers_on_user_id"
  end

  create_table "brand_images", force: :cascade do |t|
  end

  create_table "brands", force: :cascade do |t|
    t.string "name", null: false
    t.string "logo", null: false
    t.string "image_url"
    t.string "description", null: false
    t.string "official_webpage"
    t.string "instagram"
    t.string "twitter"
    t.string "facebook"
    t.string "tours"
    t.string "tour_tickets"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_brands_on_user_id"
  end

  create_table "taproom_images", force: :cascade do |t|
  end

  create_table "taproom_reviews", force: :cascade do |t|
    t.string "title", null: false
    t.string "body", null: false
    t.string "overall_rating"
    t.string "service_rating"
    t.string "ambience_rating"
    t.string "group_accommodations_rating"
    t.string "favorite_beer"
    t.string "photo"
    t.bigint "user_id", null: false
    t.bigint "taproom_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["taproom_id"], name: "index_taproom_reviews_on_taproom_id"
    t.index ["user_id"], name: "index_taproom_reviews_on_user_id"
  end

  create_table "taprooms", force: :cascade do |t|
    t.string "name", null: false
    t.string "brand", null: false
    t.string "logo", null: false
    t.string "image_url"
    t.string "description"
    t.string "address"
    t.string "city", null: false
    t.string "state", null: false
    t.string "zipcode", null: false
    t.string "directions"
    t.string "parking"
    t.string "monday_hours"
    t.string "tuesday_hours"
    t.string "wednesday_hours"
    t.string "thursday_hours"
    t.string "friday_hours"
    t.string "saturday_hours"
    t.string "sunday_hours"
    t.string "reservations"
    t.string "reservations_link"
    t.string "kitchen"
    t.string "patio"
    t.string "dogs"
    t.bigint "user_id", null: false
    t.bigint "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_taprooms_on_brand_id"
    t.index ["user_id"], name: "index_taprooms_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "username", null: false
    t.string "role", default: "member", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
