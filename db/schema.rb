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

ActiveRecord::Schema.define(version: 20170322005543) do

  create_table "contact_custom_fields", force: :cascade do |t|
    t.string   "value"
    t.integer  "contact_id"
    t.integer  "custom_field_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["contact_id"], name: "index_contact_custom_fields_on_contact_id"
    t.index ["custom_field_id"], name: "index_contact_custom_fields_on_custom_field_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "custom_fields", force: :cascade do |t|
    t.string   "label"
    t.integer  "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_id"], name: "index_custom_fields_on_type_id"
  end

  create_table "options", force: :cascade do |t|
    t.string   "value"
    t.integer  "custom_field_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["custom_field_id"], name: "index_options_on_custom_field_id"
  end

  create_table "types", force: :cascade do |t|
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
