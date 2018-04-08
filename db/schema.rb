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

ActiveRecord::Schema.define(version: 20180408191426) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email"
    t.string "phone_number"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interpreters", force: :cascade do |t|
    t.string "email"
    t.string "phone_number"
    t.string "first_name"
    t.string "last_name"
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interpreters_skills", force: :cascade do |t|
    t.bigint "interpreter_id"
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["interpreter_id"], name: "index_interpreters_skills_on_interpreter_id"
    t.index ["skill_id"], name: "index_interpreters_skills_on_skill_id"
  end

  create_table "offers", force: :cascade do |t|
    t.bigint "interpreter_id"
    t.bigint "request_id"
    t.integer "price"
    t.datetime "accepted"
    t.datetime "rejected"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["interpreter_id"], name: "index_offers_on_interpreter_id"
    t.index ["request_id"], name: "index_offers_on_request_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name", null: false
    t.decimal "lat", precision: 20, scale: 16
    t.decimal "long", precision: 20, scale: 16
    t.string "address", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.bigint "place_id"
    t.bigint "user_id"
    t.bigint "type_of_service_id"
    t.datetime "start_time", null: false
    t.datetime "end_time", null: false
    t.datetime "done"
    t.datetime "paid"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_requests_on_place_id"
    t.index ["type_of_service_id"], name: "index_requests_on_type_of_service_id"
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_of_services", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.string "phone_number", null: false
    t.boolean "company", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "interpreters_skills", "interpreters"
  add_foreign_key "interpreters_skills", "skills"
  add_foreign_key "offers", "interpreters"
  add_foreign_key "offers", "requests"
  add_foreign_key "requests", "places"
  add_foreign_key "requests", "type_of_services"
  add_foreign_key "requests", "users"
end
