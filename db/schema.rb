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

ActiveRecord::Schema.define(version: 8) do

  create_table "death_causes", force: :cascade do |t|
    t.string "name"
  end

  create_table "killers", force: :cascade do |t|
    t.string  "first_name"
    t.integer "date_of_murders"
    t.string  "gender"
    t.string  "nationality"
    t.boolean "bed_wetter"
    t.boolean "pyromania"
    t.boolean "animal_torturer"
    t.string  "last_name"
    t.string  "nickname"
    t.string  "relationship_status"
    t.string  "occupation"
    t.text    "legal_status"
    t.string  "article_url"
    t.boolean "alive"
  end

  create_table "victims", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.integer "age"
    t.string  "gender"
    t.string  "ethnicity"
    t.string  "relationship_status"
    t.string  "occupation"
    t.string  "location_of_death"
    t.string  "time_of_death"
    t.integer "cause_of_death_id"
    t.string  "image_url"
  end

end
