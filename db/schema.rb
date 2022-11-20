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

ActiveRecord::Schema.define(version: 2022_11_20_154127) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "taprooms", force: :cascade do |t|
    t.string "name", null: false
    t.string "address"
    t.string "city", null: false
    t.string "state", null: false
    t.string "zipcode", null: false
    t.string "monday_hours"
    t.string "tuesday_hours"
    t.string "wednesday_hours"
    t.string "thursday_hours"
    t.string "friday_hours"
    t.string "saturday_hours"
    t.string "sunday_hours"
    t.string "description"
    t.boolean "dog_policy"
    t.boolean "kitchen"
    t.boolean "patio"
    t.boolean "group_accommodations"
    t.string "logo"
    t.string "photo"
    t.string "instagram"
    t.string "twitter"
    t.string "facebook"
    t.string "official_webpage"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_taprooms_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
