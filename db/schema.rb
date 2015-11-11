# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151111151653) do

  create_table "breeds", force: :cascade do |t|
    t.string   "breed_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "donkeys", force: :cascade do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.date     "dob"
    t.integer  "breed_id"
    t.string   "med_cond"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "donkeys", ["breed_id"], name: "index_donkeys_on_breed_id"
  add_index "donkeys", ["owner_id"], name: "index_donkeys_on_owner_id"

  create_table "owners", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.boolean  "evac_waiver"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
