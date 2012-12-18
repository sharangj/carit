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

ActiveRecord::Schema.define(:version => 20121218165144) do

  create_table "profile1s", :force => true do |t|
    t.string   "name"
    t.date     "birthdate"
    t.string   "gender"
    t.string   "profession"
    t.string   "nationality"
    t.integer  "phonenumber"
    t.text     "hobbies"
    t.text     "likes"
    t.text     "dislikes"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "profiles", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "profession"
    t.string   "nationality"
    t.text     "hobbies"
    t.text     "likes"
    t.text     "dislikes"
    t.string   "languages"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.boolean  "gender"
  end

  create_table "trips", :force => true do |t|
    t.string   "from"
    t.string   "to"
    t.string   "via"
    t.date     "tripdate"
    t.time     "starttime"
    t.integer  "maxriders"
    t.text     "comments"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
