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

ActiveRecord::Schema.define(version: 20170125033034) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "distances", force: :cascade do |t|
    t.integer  "length",                   null: false
    t.string   "measurement", limit: 250
    t.string   "description", limit: 2500
    t.datetime "retire"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "event_types", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "description", null: false
    t.datetime "retire"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "event_type_id"
    t.integer  "distance_id"
    t.integer  "number"
    t.string   "title",         limit: 250,                  null: false
    t.string   "cash",          limit: 50,   default: "$5",  null: false
    t.string   "description",   limit: 2500
    t.string   "startLocation"
    t.datetime "startDate"
    t.datetime "retire"
    t.boolean  "visible",                    default: false, null: false
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.index ["distance_id"], name: "index_events_on_distance_id", using: :btree
    t.index ["event_type_id"], name: "index_events_on_event_type_id", using: :btree
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles_users", id: false, force: :cascade do |t|
    t.integer "role_id", null: false
    t.integer "user_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",      limit: 25
    t.string   "last_name",       limit: 50
    t.string   "email",           limit: 75,  default: ""
    t.string   "username",                                 null: false
    t.string   "password_digest", limit: 400
    t.boolean  "deleted"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

end
