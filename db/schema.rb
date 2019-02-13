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

ActiveRecord::Schema.define(version: 2019_02_13_034621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "street", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maintenance_request_notes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "maintenance_request_id", null: false
    t.text "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["maintenance_request_id"], name: "index_maintenance_request_notes_on_maintenance_request_id"
    t.index ["user_id"], name: "index_maintenance_request_notes_on_user_id"
  end

  create_table "maintenance_requests", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "resident_id", null: false
    t.bigint "address_id", null: false
    t.bigint "request_status_id", null: false
    t.bigint "request_category_id", null: false
    t.datetime "completed_on"
    t.text "content", null: false
    t.text "message", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_maintenance_requests_on_address_id"
    t.index ["request_category_id"], name: "index_maintenance_requests_on_request_category_id"
    t.index ["request_status_id"], name: "index_maintenance_requests_on_request_status_id"
    t.index ["resident_id"], name: "index_maintenance_requests_on_resident_id"
    t.index ["user_id"], name: "index_maintenance_requests_on_user_id"
  end

  create_table "residents", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.string "home_phone"
    t.string "cell_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "residents_addresses", force: :cascade do |t|
    t.bigint "resident_id"
    t.bigint "address_id"
    t.index ["address_id"], name: "index_residents_addresses_on_address_id"
    t.index ["resident_id"], name: "index_residents_addresses_on_resident_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
