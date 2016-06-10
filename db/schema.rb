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

ActiveRecord::Schema.define(version: 20160610145811) do

  create_table "shirts", force: :cascade do |t|
    t.string   "color",      limit: 10
    t.string   "size",       limit: 4
    t.string   "neck",       limit: 10
    t.integer  "amount",     limit: 4
    t.decimal  "total",                 precision: 8, scale: 2
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                   limit: 255, default: "", null: false
    t.string   "encrypted_password",      limit: 255, default: "", null: false
    t.string   "reset_password_token",    limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",           limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",      limit: 255
    t.string   "last_sign_in_ip",         limit: 255
    t.string   "confirmation_token",      limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.string   "room",                    limit: 10
    t.string   "building",                limit: 50
    t.string   "lane",                    limit: 5
    t.string   "road",                    limit: 50
    t.string   "address_number",          limit: 10
    t.string   "village_number",          limit: 10
    t.string   "subdistrict",             limit: 60
    t.string   "district",                limit: 60
    t.string   "province",                limit: 40
    t.string   "postal",                  limit: 10
    t.string   "phone",                   limit: 20
    t.integer  "card_last_four",          limit: 4
    t.string   "omise_customer_token",    limit: 255
    t.string   "paypal_customer_token",   limit: 255
    t.string   "facebook_customer_token", limit: 255
    t.string   "twitter_customer_token",  limit: 255
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
