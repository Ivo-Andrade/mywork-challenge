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

ActiveRecord::Schema.define(version: 2019_07_11_021739) do

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.integer "contract_ID"
    t.string "password"
    t.string "profile_desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "geofences", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.float "radius"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timetrackings", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.boolean "active"
    t.datetime "clock_in"
    t.datetime "clock_out"
    t.string "comment"
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_timetrackings_on_employee_id"
  end

end
