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

ActiveRecord::Schema.define(version: 20141126163140950820) do

  create_table "faculties", force: true do |t|
    t.decimal  "acess_notes"
    t.integer  "students_number"
    t.integer  "teachers_number"
    t.string   "address"
    t.decimal  "global_score"
    t.integer  "study_id"
    t.integer  "university_id"
    t.decimal  "longitud"
    t.decimal  "latitud"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seems_rateable_rates", force: true do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.float    "stars",         null: false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "seems_rateable_rates", ["dimension"], name: "index_seems_rateable_rates_on_dimension"
  add_index "seems_rateable_rates", ["rateable_id", "rateable_type"], name: "index_seems_rateable_rates_on_rateable_id_and_rateable_type"
  add_index "seems_rateable_rates", ["rater_id"], name: "index_seems_rateable_rates_on_rater_id"

  create_table "studies", force: true do |t|
    t.string   "name"
    t.boolean  "undergraduate", default: true
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "universities", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.text     "description"
    t.string   "image"
    t.integer  "students_number"
    t.boolean  "public",          default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
