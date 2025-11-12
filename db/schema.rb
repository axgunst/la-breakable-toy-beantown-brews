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

ActiveRecord::Schema.define(version: 2023_01_14_215242) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beer_images", force: :cascade do |t|
    t.string "beer_image_url", null: false
    t.string "beer_image_caption"
    t.bigint "beer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["beer_id"], name: "index_beer_images_on_beer_id"
  end

  create_table "beer_reviews", force: :cascade do |t|
    t.string "beer_review_title", null: false
    t.string "beer_review_body", null: false
    t.string "beer_review_overall_rating", null: false
    t.string "beer_review_pour"
    t.string "beer_review_image"
    t.bigint "user_id", null: false
    t.bigint "beer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["beer_id"], name: "index_beer_reviews_on_beer_id"
    t.index ["user_id"], name: "index_beer_reviews_on_user_id"
  end

  create_table "beer_styles", force: :cascade do |t|
    t.string "beer_style_name", null: false
    t.string "beer_style_description", null: false
  end

  create_table "beers", force: :cascade do |t|
    t.string "beer_name", null: false
    t.string "beer_brand", null: false
    t.string "beer_image_url"
    t.string "beer_description"
    t.string "beer_style", null: false
    t.string "beer_abv"
    t.bigint "user_id", null: false
    t.bigint "brand_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_beers_on_brand_id"
    t.index ["user_id"], name: "index_beers_on_user_id"
  end

  create_table "brand_images", force: :cascade do |t|
    t.string "brand_image_url", null: false
    t.string "brand_image_caption"
    t.bigint "brand_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_brand_images_on_brand_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string "brand_name", null: false
    t.string "brand_logo", null: false
    t.string "brand_image_url"
    t.string "brand_description", null: false
    t.string "brand_official_webpage"
    t.string "brand_instagram"
    t.string "brand_twitter"
    t.string "brand_facebook"
    t.string "brand_tours"
    t.string "brand_tour_tickets"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_brands_on_user_id"
  end

  create_table "taproom_images", force: :cascade do |t|
    t.string "taproom_image_url", null: false
    t.string "taproom_image_caption"
    t.bigint "taproom_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["taproom_id"], name: "index_taproom_images_on_taproom_id"
  end

  create_table "taproom_reviews", force: :cascade do |t|
    t.string "taproom_review_title", null: false
    t.string "taproom_review_body", null: false
    t.string "taproom_review_overall_rating", null: false
    t.string "taproom_review_service_rating"
    t.string "taproom_review_ambience_rating"
    t.string "taproom_review_group_accommodations_rating"
    t.string "taproom_review_favorite_beer"
    t.string "taproom_review_image"
    t.bigint "user_id", null: false
    t.bigint "taproom_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["taproom_id"], name: "index_taproom_reviews_on_taproom_id"
    t.index ["user_id"], name: "index_taproom_reviews_on_user_id"
  end

  create_table "taprooms", force: :cascade do |t|
    t.string "taproom_name", null: false
    t.string "taproom_brand", null: false
    t.string "taproom_logo", null: false
    t.string "taproom_image_url"
    t.string "taproom_description"
    t.string "taproom_address"
    t.string "taproom_city", null: false
    t.string "taproom_state", null: false
    t.string "taproom_zipcode", null: false
    t.string "taproom_directions"
    t.string "taproom_parking"
    t.string "taproom_monday_hours"
    t.string "taproom_tuesday_hours"
    t.string "taproom_wednesday_hours"
    t.string "taproom_thursday_hours"
    t.string "taproom_friday_hours"
    t.string "taproom_saturday_hours"
    t.string "taproom_sunday_hours"
    t.string "taproom_reservations"
    t.string "taproom_reservations_link"
    t.string "taproom_kitchen"
    t.string "taproom_patio"
    t.string "taproom_dog_policy"
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
