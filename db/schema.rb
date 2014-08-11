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

ActiveRecord::Schema.define(version: 20140811231430) do

  create_table "actors", force: true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.integer  "dvd_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authors", force: true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books", force: true do |t|
    t.string   "title"
    t.string   "category"
    t.string   "comment"
    t.boolean  "on_loan"
    t.boolean  "read"
    t.boolean  "is_digital"
    t.boolean  "is_owned"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "author_id"
  end

  create_table "cds", force: true do |t|
    t.string   "title"
    t.string   "category"
    t.string   "comment"
    t.boolean  "on_loan"
    t.boolean  "listened"
    t.boolean  "is_digital"
    t.boolean  "is_owned"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "musician_id"
    t.integer  "ensemble_id"
  end

  create_table "dvds", force: true do |t|
    t.string   "title"
    t.string   "category"
    t.string   "comment"
    t.boolean  "on_loan"
    t.boolean  "viewed"
    t.boolean  "is_digital"
    t.boolean  "is_owned"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "actor_id"
  end

  create_table "ensembles", force: true do |t|
    t.string   "name"
    t.integer  "cd_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "musicians", force: true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.integer  "cd_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "video_games", force: true do |t|
    t.string   "title"
    t.string   "console"
    t.string   "category"
    t.string   "comment"
    t.boolean  "on_loan"
    t.boolean  "played"
    t.boolean  "is_digital"
    t.boolean  "is_owned"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

end
