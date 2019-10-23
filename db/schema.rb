# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_22_175653) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "poster"
    t.string "actors"
    t.string "director"
    t.string "released"
    t.string "genre"
    t.string "rated"
    t.string "run_time"
    t.string "plot"
    t.string "production"
    t.string "a_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "show_rooms", force: :cascade do |t|
    t.integer "num_of_seats"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "show_times", force: :cascade do |t|
    t.bigint "show_room_id", null: false
    t.bigint "movie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["movie_id"], name: "index_show_times_on_movie_id"
    t.index ["show_room_id"], name: "index_show_times_on_show_room_id"
  end

  add_foreign_key "show_times", "movies"
  add_foreign_key "show_times", "show_rooms"
end
