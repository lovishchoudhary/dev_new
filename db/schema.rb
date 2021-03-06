# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141231110248) do

  create_table "bookings", force: true do |t|
    t.integer  "booking_id"
    t.integer  "slot_id"
    t.integer  "customer_id"
    t.boolean  "booking_confirmation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.integer  "city_id"
    t.string   "city_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.integer  "customer_id"
    t.string   "customer_name"
    t.string   "customer_email"
    t.string   "customer_phone"
    t.string   "customer_location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facilities", force: true do |t|
    t.integer  "sc_id"
    t.boolean  "refreshment"
    t.boolean  "parking"
    t.boolean  "sports_shop"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grounds", force: true do |t|
    t.integer  "ground_id"
    t.string   "ground_name"
    t.text     "ground_description"
    t.integer  "sc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gsrelationships", force: true do |t|
    t.integer  "ground_id"
    t.integer  "sport_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scs", force: true do |t|
    t.integer  "scs_id"
    t.integer  "city_id"
    t.string   "sc_name"
    t.text     "sc_location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "slots", force: true do |t|
    t.integer  "slot_id"
    t.date     "slot_date"
    t.time     "slot_start_time"
    t.time     "slot_end_time"
    t.boolean  "slot_availability"
    t.integer  "ground_id"
    t.integer  "sport_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sports", force: true do |t|
    t.integer  "sports_id"
    t.string   "sports_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staffs", force: true do |t|
    t.integer  "staff_id"
    t.string   "staff_name"
    t.string   "staff_email"
    t.string   "staff_phone"
    t.integer  "sc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
