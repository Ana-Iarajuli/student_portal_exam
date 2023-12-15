# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_12_15_083815) do
  create_table "lecturers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "start_time"
    t.time "end_time"
    t.index ["subject_id"], name: "index_lecturers_on_subject_id"
  end

  create_table "lecturers_subjects", id: false, force: :cascade do |t|
    t.integer "subject_id", null: false
    t.integer "lecturer_id", null: false
    t.index ["lecturer_id", "subject_id"], name: "index_lecturers_subjects_on_lecturer_id_and_subject_id"
    t.index ["subject_id", "lecturer_id"], name: "index_lecturers_subjects_on_subject_id_and_lecturer_id"
  end

  create_table "requests", force: :cascade do |t|
    t.integer "request_code"
    t.date "date"
    t.integer "subject_id", null: false
    t.integer "lecturer_id", null: false
    t.time "selected_hours"
    t.time "actual_hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lecturer_id"], name: "index_requests_on_lecturer_id"
    t.index ["subject_id"], name: "index_requests_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "lecturer_id"
    t.time "start_time"
    t.time "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "question", default: "Khinkali tu Mwvadi?"
    t.string "answer"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "lecturers", "subjects"
  add_foreign_key "requests", "lecturers"
  add_foreign_key "requests", "subjects"
end
