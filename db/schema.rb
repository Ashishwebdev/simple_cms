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

ActiveRecord::Schema.define(version: 20170325052144) do

  create_table "admin_users", force: :cascade do |t|
    t.string   "first_name",      limit: 25
    t.string   "last_name",       limit: 50
    t.string   "email",           limit: 100, default: "", null: false
    t.string   "hashed_password", limit: 40
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "username",        limit: 25
  end

  add_index "admin_users", ["username"], name: "index_admin_users_on_username"

  create_table "pages", force: :cascade do |t|
    t.string   "Name"
    t.integer  "position"
    t.boolean  "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "section_edits", force: :cascade do |t|
    t.integer  "admin_user_id"
    t.integer  "section_id"
    t.string   "summmary"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "section_edits", ["admin_user_id", "section_id"], name: "index_section_edits_on_admin_user_id_and_section_id"

  create_table "testings", force: :cascade do |t|
    t.string   "name"
    t.integer  "position"
    t.boolean  "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
