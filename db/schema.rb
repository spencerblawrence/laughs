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

ActiveRecord::Schema.define(version: 2019_02_14_193042) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comedian_profiles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "city_state"
    t.string "website"
    t.string "photo1", null: false
    t.text "description1", null: false
    t.text "description2"
    t.text "description3"
    t.string "video1"
    t.string "video2"
    t.string "video3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_comedian_profiles_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name", null: false
    t.string "venue", null: false
    t.string "address", null: false
    t.datetime "start_date_time", null: false
    t.datetime "end_date_time"
    t.integer "cost", null: false
    t.string "website"
    t.text "description"
    t.boolean "recurring"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
    t.float "lat"
    t.float "lng"
  end

  create_table "lineup_slots", force: :cascade do |t|
    t.bigint "comedian_id", null: false
    t.bigint "gig_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comedian_id"], name: "index_lineup_slots_on_comedian_id"
    t.index ["gig_id"], name: "index_lineup_slots_on_gig_id"
  end

  create_table "signups", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_signups_on_event_id"
    t.index ["user_id"], name: "index_signups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "role", default: "Fan", null: false
    t.boolean "admin", default: false
    t.string "address"
    t.float "lat"
    t.float "lng"
    t.string "profile_photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
