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

ActiveRecord::Schema.define(version: 2018_12_21_202749) do

  create_table "airlines", force: :cascade do |t|
    t.string "name"
    t.string "headquarters"
  end

  create_table "kid_parents", force: :cascade do |t|
    t.integer "kid_id"
    t.integer "parent_id"
  end

  create_table "kids", force: :cascade do |t|
    t.string "name"
    t.boolean "good"
    t.integer "santum_id"
  end

  create_table "parents", force: :cascade do |t|
    t.string "name"
  end

  create_table "passengers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
  end

  create_table "presents", force: :cascade do |t|
    t.integer "size"
    t.float "price"
    t.string "name"
    t.integer "santum_id"
    t.integer "kid_id"
  end

  create_table "santa", force: :cascade do |t|
    t.string "name"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "airline_id"
    t.integer "passenger_id"
    t.string "seat_class"
  end

end
