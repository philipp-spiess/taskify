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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120306214247) do

  create_table "connected_accounts", :force => true do |t|
    t.string   "key"
    t.string   "link"
    t.string   "email"
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "connected_accounts", ["user_id"], :name => "index_connected_accounts_on_user_id"

  create_table "tasks", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image"
    t.string   "website"
    t.date     "date"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "nickname"
    t.string   "name"
    t.boolean  "isAdmin"
    t.string   "email"
    t.string   "password"
    t.string   "location"
    t.string   "website"
    t.string   "company"
    t.text     "about"
    t.text     "css"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
