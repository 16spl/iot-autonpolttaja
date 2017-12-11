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

ActiveRecord::Schema.define(version: 20171211124811) do

  create_table "heater_commands", force: :cascade do |t|
    t.string "command", null: false
    t.datetime "heating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "heater_id"
    t.boolean "seen", null: false
    t.index ["heater_id"], name: "index_heater_commands_on_heater_id"
  end

  create_table "heater_statuses", force: :cascade do |t|
    t.float "tempature"
    t.string "status"
    t.datetime "last_seen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "heater_id"
    t.index ["heater_id"], name: "index_heater_statuses_on_heater_id"
  end

  create_table "heaters", force: :cascade do |t|
    t.string "owner"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "heating_times", force: :cascade do |t|
    t.datetime "done_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "heater_id"
    t.index ["heater_id"], name: "index_heating_times_on_heater_id"
  end

  create_table "tempatures", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "temp"
  end

end
