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

ActiveRecord::Schema.define(version: 20151120044649) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pg_trgm"
  enable_extension "fuzzystrmatch"

  create_table "attendances", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "retreat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "attendances", ["retreat_id"], name: "index_attendances_on_retreat_id", using: :btree
  add_index "attendances", ["user_id"], name: "index_attendances_on_user_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.string   "text"
    t.integer  "retreat_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["retreat_id"], name: "index_comments_on_retreat_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "instructors", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "type_of_yoga_practice"
    t.string   "city"
    t.string   "state"
    t.string   "photo_url"
    t.string   "description"
    t.string   "facebook_url"
    t.string   "email"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "title"
    t.string   "photo_url"
    t.string   "description"
    t.integer  "retreat_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image"
    t.integer  "user_id"
  end

  add_index "photos", ["retreat_id"], name: "index_photos_on_retreat_id", using: :btree
  add_index "photos", ["user_id"], name: "index_photos_on_user_id", using: :btree

  create_table "retreats", force: :cascade do |t|
    t.string  "title"
    t.string  "address"
    t.string  "description"
    t.decimal "cost",          precision: 8, scale: 2
    t.integer "user_id"
    t.integer "instructor_id"
    t.date    "start_date"
    t.date    "end_date"
  end

  add_index "retreats", ["instructor_id"], name: "index_retreats_on_instructor_id", using: :btree
  add_index "retreats", ["user_id"], name: "index_retreats_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "type_of_yoga_practice"
    t.string   "city"
    t.string   "state"
    t.string   "photo_url"
    t.string   "description"
    t.string   "facebook_url"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "image"
    t.string   "avatar"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "attendances", "retreats"
  add_foreign_key "attendances", "users"
  add_foreign_key "comments", "retreats"
  add_foreign_key "comments", "users"
  add_foreign_key "photos", "retreats"
  add_foreign_key "photos", "users"
  add_foreign_key "retreats", "instructors"
  add_foreign_key "retreats", "users"
end
