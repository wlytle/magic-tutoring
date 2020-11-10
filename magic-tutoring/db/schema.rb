# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_10_003530) do

  create_table "apprentice_subjects", force: :cascade do |t|
    t.string "name"
    t.integer "apprentice_id", null: false
    t.integer "subject_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["apprentice_id"], name: "index_apprentice_subjects_on_apprentice_id"
    t.index ["subject_id"], name: "index_apprentice_subjects_on_subject_id"
  end

  create_table "apprentices", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.string "house"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "conclaves", force: :cascade do |t|
    t.string "feedback"
    t.string "location"
    t.integer "professor_id", null: false
    t.integer "apprentice_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "date"
    t.datetime "start_time"
    t.datetime "end_time"
    t.index ["apprentice_id"], name: "index_conclaves_on_apprentice_id"
    t.index ["professor_id"], name: "index_conclaves_on_professor_id"
  end

  create_table "professor_availabilities", force: :cascade do |t|
    t.integer "professor_id", null: false
    t.datetime "date"
    t.datetime "begin_time"
    t.datetime "finish_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["professor_id"], name: "index_professor_availabilities_on_professor_id"
  end

  create_table "professors", force: :cascade do |t|
    t.string "name"
    t.string "house"
    t.integer "subject_id", null: false
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["subject_id"], name: "index_professors_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "apprentice_subjects", "apprentices"
  add_foreign_key "apprentice_subjects", "subjects"
  add_foreign_key "conclaves", "apprentices"
  add_foreign_key "conclaves", "professors"
  add_foreign_key "professor_availabilities", "professors"
  add_foreign_key "professors", "subjects"
end
