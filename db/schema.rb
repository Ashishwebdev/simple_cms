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

ActiveRecord::Schema.define(version: 20170317172436) do

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

  create_table "admin_users_pages", id: false, force: :cascade do |t|
    t.integer "admin_users_id"
    t.integer "page_id"
  end

  add_index "admin_users_pages", ["admin_users_id", "page_id"], name: "index_admin_users_pages_on_admin_users_id_and_page_id"

  create_table "pages", force: :cascade do |t|
    t.integer  "subject_id"
    t.string   "name",       limit: 50
    t.integer  "permalink"
    t.boolean  "position"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "pages", ["permalink"], name: "index_pages_on_permalink"
  add_index "pages", ["subject_id"], name: "index_pages_on_subject_id"

  create_table "sections", force: :cascade do |t|
    t.integer  "page_id"
    t.string   "name"
    t.integer  "positon"
    t.boolean  "visible"
    t.string   "content_type"
    t.text     "content"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "sections", ["page_id"], name: "index_sections_on_page_id"

  create_table "subjects", force: :cascade do |t|
    t.string   "name",       limit: 50
    t.integer  "position",              null: false
    t.boolean  "visible"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
