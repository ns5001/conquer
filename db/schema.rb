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

ActiveRecord::Schema.define(version: 20161118213921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fears", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "resources",   default: [],              array: true
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "plan_jobs", force: :cascade do |t|
    t.integer  "plan_id"
    t.integer  "job_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "completed",  default: false
  end

  create_table "plans", force: :cascade do |t|
    t.integer  "fear_id"
    t.integer  "deadline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "user_fears", force: :cascade do |t|
    t.integer "user_id"
    t.integer "fear_id"
  end

  create_table "user_jobs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "job_id"
    t.boolean "completed", default: false
  end

  create_table "user_plans", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "plan_id"
    t.boolean  "status",        default: false
    t.datetime "user_deadline"
    t.integer  "rating"
    t.string   "comment"
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.integer  "weight"
    t.integer  "height"
    t.string   "bio"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "picture"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
