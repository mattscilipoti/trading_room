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

ActiveRecord::Schema.define(:version => 20120210032503) do

  create_table "case_studies", :force => true do |t|
    t.integer  "ticker_id"
    t.datetime "studied_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "period"
    t.text     "comment"
  end

  add_index "case_studies", ["ticker_id"], :name => "index_case_studies_on_ticker_id"

  create_table "tickers", :force => true do |t|
    t.string   "name"
    t.string   "ticker"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
