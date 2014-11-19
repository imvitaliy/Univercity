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

ActiveRecord::Schema.define(version: 20141117170529) do

  create_table "faculties", force: true do |t|
    t.decimal  "acess_notes"
    t.integer  "students_number"
    t.integer  "teachers_number"
    t.string   "address"
    t.decimal  "global_score"
    t.integer  "study_id"
    t.integer  "university_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

end
