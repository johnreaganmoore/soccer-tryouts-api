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

ActiveRecord::Schema.define(version: 20180204205853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.string "logo"
    t.string "level"
    t.boolean "indoor"
    t.string "season_start"
    t.string "season_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.string "logo"
    t.string "address_1"
    t.string "address_2"
    t.string "locality"
    t.string "region"
    t.string "zip"
    t.bigint "league_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.index ["league_id"], name: "index_teams_on_league_id"
  end

  create_table "tryouts", force: :cascade do |t|
    t.string "label"
    t.string "info"
    t.string "registration"
    t.date "start_date"
    t.date "end_date"
    t.integer "fee"
    t.string "locality"
    t.string "region"
    t.bigint "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_tryouts_on_team_id"
  end

  add_foreign_key "teams", "leagues"
  add_foreign_key "tryouts", "teams"
end
