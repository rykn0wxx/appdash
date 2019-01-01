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

ActiveRecord::Schema.define(version: 2019_01_01_134706) do

  create_table "clients", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.integer "project_id"
    t.integer "region_id"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_clients_on_name", unique: true
    t.index ["project_id"], name: "index_clients_on_project_id"
    t.index ["region_id"], name: "index_clients_on_region_id"
  end

  create_table "fact_phones", force: :cascade do |t|
    t.date "record_date"
    t.integer "language_id"
    t.integer "project_id"
    t.integer "calls_off"
    t.integer "calls_ans"
    t.integer "calls_ans_sl"
    t.integer "calls_abn"
    t.integer "calls_abn_sl"
    t.integer "time_talk"
    t.integer "time_hold"
    t.integer "time_wrap"
    t.integer "queue_ans"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_fact_phones_on_language_id"
    t.index ["project_id"], name: "index_fact_phones_on_project_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_languages_on_name", unique: true
  end

  create_table "projects", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "code", default: "", null: false
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_projects_on_code", unique: true
    t.index ["name"], name: "index_projects_on_name", unique: true
  end

  create_table "regions", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "code", default: "", null: false
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_regions_on_code", unique: true
    t.index ["name"], name: "index_regions_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", limit: 50, default: "", null: false
    t.string "username", limit: 50, default: "", null: false
    t.string "password_digest", default: "", null: false
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
