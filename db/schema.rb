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

ActiveRecord::Schema.define(:version => 20140130154057) do

  create_table "bets", :force => true do |t|
    t.decimal  "amount"
    t.string   "owner"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "races", :force => true do |t|
    t.string   "location"
    t.integer  "winner_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "wookies", :force => true do |t|
    t.string   "name"
    t.float    "best_time"
    t.float    "odds"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "race_id"
  end

  add_index "wookies", ["race_id"], :name => "index_wookies_on_race_id"

  create_table "wookies_races", :force => true do |t|
    t.integer "wookie_id"
    t.integer "race_id"
  end

end
