# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_04_19_023258) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "props", force: :cascade do |t|
    t.string "name", null: false
    t.integer "rent"
    t.string "address", null: false
    t.integer "years_old"
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "line_name"
    t.string "station_name"
    t.integer "minutes"
    t.bigint "prop_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prop_id"], name: "index_stations_on_prop_id"
  end

  add_foreign_key "stations", "props"
end
