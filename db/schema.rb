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

ActiveRecord::Schema.define(version: 20150427011943) do

  create_table "students", force: :cascade do |t|
    t.string   "sex"
    t.integer  "age"
    t.string   "address"
    t.string   "famsize"
    t.string   "Pstatus"
    t.integer  "Medu"
    t.integer  "Fedu"
    t.string   "Mjob"
    t.string   "Fjob"
    t.string   "reason"
    t.string   "guardian"
    t.integer  "traveltime"
    t.integer  "studytime"
    t.integer  "failures"
    t.string   "schoolsup"
    t.string   "famsup"
    t.string   "paid"
    t.string   "activities"
    t.string   "nursery"
    t.string   "higher"
    t.string   "internet"
    t.string   "romantic"
    t.integer  "famrel"
    t.integer  "freetime"
    t.integer  "goout"
    t.integer  "Dalc"
    t.integer  "Walc"
    t.integer  "health"
    t.integer  "absences"
    t.integer  "G1"
    t.integer  "G2"
    t.integer  "G3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
