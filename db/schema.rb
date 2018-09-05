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

ActiveRecord::Schema.define(version: 20180905000728) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "goalposts", force: :cascade do |t|
    t.date "date"
    t.text "comment"
    t.integer "minutes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "person_goal_id"
    t.index ["person_goal_id"], name: "index_goalposts_on_person_goal_id"
  end

  create_table "goals", force: :cascade do |t|
    t.string "description"
    t.string "frequency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.date "birthday"
    t.date "important_date"
    t.string "important_date_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "group_id"
    t.index ["group_id"], name: "index_people_on_group_id"
  end

  create_table "person_goals", force: :cascade do |t|
    t.bigint "goal_id"
    t.bigint "person_id"
    t.index ["goal_id"], name: "index_person_goals_on_goal_id"
    t.index ["person_id"], name: "index_person_goals_on_person_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

  add_foreign_key "goalposts", "person_goals"
  add_foreign_key "people", "groups"
  add_foreign_key "person_goals", "goals"
  add_foreign_key "person_goals", "people"
end
