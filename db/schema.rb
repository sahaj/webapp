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

ActiveRecord::Schema.define(version: 20150303032436) do

  create_table "article_performs", force: :cascade do |t|
    t.string   "date"
    t.decimal  "valu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string   "s_id"
    t.integer  "articleid"
    t.decimal  "sentiment",  precision: 5, scale: 3
    t.string   "date"
    t.string   "title"
    t.string   "url"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "performs", force: :cascade do |t|
    t.string   "date"
    t.decimal  "valu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stock_names", force: :cascade do |t|
    t.string   "s_id"
    t.string   "s_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "stock_names", ["s_id"], name: "index_stock_names_on_s_id"

  create_table "stocks", force: :cascade do |t|
    t.string   "s_id"
    t.string   "date"
    t.decimal  "open",       precision: 4, scale: 2
    t.decimal  "high",       precision: 4, scale: 2
    t.decimal  "low",        precision: 4, scale: 2
    t.decimal  "close",      precision: 4, scale: 2
    t.decimal  "volume",     precision: 4, scale: 2
    t.decimal  "adjclose",   precision: 4, scale: 2
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "stocks", ["s_id"], name: "index_stocks_on_s_id"

  create_table "strategies", force: :cascade do |t|
    t.string   "date"
    t.string   "s_id"
    t.string   "todo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "total_earnings", force: :cascade do |t|
    t.string   "date"
    t.string   "s_id"
    t.decimal  "earning"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weekly_earnings", force: :cascade do |t|
    t.string   "date"
    t.string   "s_id"
    t.decimal  "earning"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
