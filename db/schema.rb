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

ActiveRecord::Schema.define(version: 20171208181322) do

  create_table "essays", force: :cascade do |t|
    t.string "title"
    t.date "due_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "question"
  end

  create_table "research_pods", force: :cascade do |t|
    t.text "body"
    t.integer "essay_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["essay_id"], name: "index_research_pods_on_essay_id"
  end

  create_table "researches", force: :cascade do |t|
    t.integer "essay_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "body"
    t.index ["essay_id"], name: "index_researches_on_essay_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "title"
    t.text "outline"
    t.text "content"
    t.integer "essay_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["essay_id"], name: "index_sections_on_essay_id"
  end

  create_table "sources", force: :cascade do |t|
    t.string "title"
    t.text "citation"
    t.text "description"
    t.text "readings"
    t.integer "essay_id"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["essay_id"], name: "index_sources_on_essay_id"
  end

end
