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

ActiveRecord::Schema.define(version: 20140206150944) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "agents", force: true do |t|
    t.string   "last_name",                          null: false
    t.string   "last_name_kana",                     null: false
    t.string   "first_name",                         null: false
    t.string   "first_name_kana",                    null: false
    t.date     "birth_day"
    t.integer  "sex"
    t.integer  "age"
    t.string   "home_city"
    t.string   "location"
    t.string   "hobby"
    t.string   "ability"
    t.string   "free_word"
    t.string   "appeal"
    t.binary   "icon",              limit: 16777215
    t.string   "icon_content_type"
    t.string   "email"
    t.integer  "point"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "agents", ["email"], name: "index_agents_on_email", unique: true, using: :btree

  create_table "businesses", force: true do |t|
    t.string   "outline"
    t.string   "company_name"
    t.string   "company_position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
