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

ActiveRecord::Schema.define(version: 20150427025624) do

  create_table "students", force: :cascade do |t|
    t.string   "sex"
    t.string   "address"
    t.string   "famsize"
    t.string   "Pstatus"
    t.string   "Mjob"
    t.string   "Fjob"
    t.string   "reason"
    t.string   "guardian"
    t.string   "schoolsup"
    t.string   "famsup"
    t.string   "paid"
    t.string   "activities"
    t.string   "nursery"
    t.string   "higher"
    t.string   "internet"
    t.string   "romantic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "age"
    t.string   "Medu"
    t.string   "Fedu"
    t.string   "traveltime"
    t.string   "studytime"
    t.string   "failures"
    t.string   "famrel"
    t.string   "freetime"
    t.string   "goout"
    t.string   "Dalc"
    t.string   "Walc"
    t.string   "health"
    t.string   "absences"
    t.string   "G1"
    t.string   "G2"
    t.string   "G3"
  end

end
