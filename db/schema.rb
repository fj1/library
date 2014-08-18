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

ActiveRecord::Schema.define(version: 20140818045532) do

  create_table "actor_dvds", force: true do |t|
    t.integer  "actor_id"
    t.integer  "dvd_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "actor_dvds", ["actor_id"], name: "index_actor_dvds_on_actor_id"
  add_index "actor_dvds", ["dvd_id"], name: "index_actor_dvds_on_dvd_id"

  create_table "actors", force: true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "author_books", force: true do |t|
    t.integer  "book_id"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "author_books", ["author_id"], name: "index_author_books_on_author_id"
  add_index "author_books", ["book_id"], name: "index_author_books_on_book_id"

  create_table "authors", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "full_name"
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
  end

  create_table "cd_ensembles", force: true do |t|
    t.integer  "cd_id"
    t.integer  "ensemble_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cd_ensembles", ["cd_id"], name: "index_cd_ensembles_on_cd_id"
  add_index "cd_ensembles", ["ensemble_id"], name: "index_cd_ensembles_on_ensemble_id"

  create_table "cd_musicians", force: true do |t|
    t.integer  "cd_id"
    t.integer  "musician_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cd_musicians", ["cd_id"], name: "index_cd_musicians_on_cd_id"
  add_index "cd_musicians", ["musician_id"], name: "index_cd_musicians_on_musician_id"

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
  end

  create_table "ensembles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "musicians", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "full_name"
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
