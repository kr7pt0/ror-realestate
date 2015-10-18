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

ActiveRecord::Schema.define(version: 20141220200042) do

  create_table "beds", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listings", force: true do |t|
    t.integer  "agent_id"
    t.string   "main_photo",       default: "wzupztbtjzhe0fi3fpda.jpg"
    t.string   "street_address"
    t.string   "zip_code"
    t.decimal  "price"
    t.integer  "size"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "full_baths_no"
    t.integer  "half_baths_no"
    t.integer  "status_id"
    t.integer  "bed_id"
    t.integer  "neighborhood_id"
    t.integer  "property_type_id"
  end

  add_index "listings", ["bed_id"], name: "index_listings_on_bed_id"
  add_index "listings", ["neighborhood_id"], name: "index_listings_on_neighborhood_id"
  add_index "listings", ["property_type_id"], name: "index_listings_on_property_type_id"
  add_index "listings", ["user_id"], name: "index_listings_on_user_id"

  create_table "neighborhoods", force: true do |t|
    t.string "name"
  end

  create_table "property_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "login"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",              default: false
    t.string   "avatar"
    t.string   "phone"
    t.string   "fax"
    t.text     "biography"
    t.string   "address"
    t.string   "license_no"
    t.string   "social_security_no"
    t.float    "commision_split"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end