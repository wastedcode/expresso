# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120404220500) do

  create_table "activities", :id => false, :force => true do |t|
    t.string   "id",         :limit => 36, :null => false
    t.string   "name",                     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["name"], :name => "index_activities_on_name", :unique => true

  create_table "actors", :id => false, :force => true do |t|
    t.string "id",            :null => false
    t.string "experience_id", :null => false
    t.string "user_id",       :null => false
  end

  add_index "actors", ["experience_id"], :name => "index_actors_on_experience_id"

  create_table "emotions", :id => false, :force => true do |t|
    t.string   "id",         :limit => 36, :null => false
    t.string   "name",                     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "emotions", ["name"], :name => "index_emotions_on_name", :unique => true

  create_table "experience_locations", :id => false, :force => true do |t|
    t.string "id",            :null => false
    t.string "experience_id", :null => false
    t.string "venue_id",      :null => false
  end

  add_index "experience_locations", ["experience_id"], :name => "index_experience_locations_on_experience_id"

  create_table "experienced_activities", :id => false, :force => true do |t|
    t.string "id",            :null => false
    t.string "experience_id", :null => false
    t.string "activity_id",   :null => false
  end

  add_index "experienced_activities", ["experience_id"], :name => "index_experienced_activities_on_experience_id"

  create_table "experienced_emotions", :id => false, :force => true do |t|
    t.string "id",            :null => false
    t.string "experience_id", :null => false
    t.string "emotion_id",    :null => false
  end

  add_index "experienced_emotions", ["experience_id"], :name => "index_experienced_emotions_on_experience_id"

  create_table "experiences", :id => false, :force => true do |t|
    t.string   "id",          :null => false
    t.string   "user_id",     :null => false
    t.text     "comment"
    t.datetime "tagged_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "experiences", ["user_id"], :name => "index_experiences_on_user_id"

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "email",                              :null => false
    t.string   "crypted_password",                   :null => false
    t.string   "password_salt",                      :null => false
    t.string   "persistence_token",                  :null => false
    t.string   "single_access_token",                :null => false
    t.string   "perishable_token",                   :null => false
    t.integer  "login_count",         :default => 0, :null => false
    t.integer  "failed_login_count",  :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["persistence_token"], :name => "index_users_on_persistence_token"

  create_table "venues", :id => false, :force => true do |t|
    t.string  "id",               :null => false
    t.string  "partner_venue_id"
    t.integer "venue_type"
    t.string  "name",             :null => false
    t.text    "categories"
    t.text    "location"
  end

  add_index "venues", ["partner_venue_id"], :name => "index_venues_on_partner_venue_id"

end
