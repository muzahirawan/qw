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

ActiveRecord::Schema[7.0].define(version: 2023_03_25_175417) do
  create_table "appointents", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "coach_id", null: false
    t.datetime "appointent_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coach_id"], name: "index_appointents_on_coach_id"
    t.index ["user_id"], name: "index_appointents_on_user_id"
  end

  create_table "coaches", force: :cascade do |t|
    t.string "name"
    t.string "fee"
    t.string "experties"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grooms", force: :cascade do |t|
    t.string "name"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_grooms_on_user_id"
  end

  create_table "horses", force: :cascade do |t|
    t.string "name"
    t.string "date_of_birth"
    t.string "color"
    t.string "image"
    t.integer "user_id", null: false
    t.integer "stable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stable_id"], name: "index_horses_on_stable_id"
    t.index ["user_id"], name: "index_horses_on_user_id"
  end

  create_table "stables", force: :cascade do |t|
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appointents", "coaches"
  add_foreign_key "appointents", "users"
  add_foreign_key "grooms", "users"
  add_foreign_key "horses", "stables"
  add_foreign_key "horses", "users"
end
