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

ActiveRecord::Schema.define(version: 2019_04_16_184829) do

  create_table "horoscopes", force: :cascade do |t|
    t.string "sign"
    t.string "date_range"
    t.datetime "current_date"
    t.text "description"
    t.string "compatibility"
    t.string "mood"
    t.string "color"
    t.integer "lucky_number"
    t.string "lucky_time"
  end

  create_table "readings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "horoscope_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "birthday"

    t.string "name"
    t.string "birthday"

    t.string "sign"
    t.index ["name"], name: "index_users_on_name", unique: true

  end

end
