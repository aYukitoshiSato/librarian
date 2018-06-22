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

ActiveRecord::Schema.define(version: 2018_06_22_011716) do

  create_table "collections", force: :cascade do |t|
    t.string "title"
    t.integer "format_id"
    t.integer "content_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "No"
    t.index ["content_id"], name: "index_collections_on_content_id"
  end

  create_table "contents", force: :cascade do |t|
    t.integer "form_id"
    t.string "title"
    t.integer "circle"
    t.integer "rating"
    t.date "release_date"
    t.integer "price"
    t.string "cover_image"
    t.integer "media_id"
    t.integer "event_first"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "creator_belongs_to_collections", force: :cascade do |t|
    t.integer "position"
    t.integer "creator_id"
    t.integer "collection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["collection_id"], name: "index_creator_belongs_to_collections_on_collection_id"
  end

  create_table "creators", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formats", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.date "birthday"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
