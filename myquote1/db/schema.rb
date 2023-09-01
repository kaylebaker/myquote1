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

ActiveRecord::Schema[7.0].define(version: 2023_09_01_030629) do
  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_categories_on_name", unique: true
  end

  create_table "philosophers", force: :cascade do |t|
    t.string "fname", null: false
    t.string "lname", null: false
    t.integer "birth_year"
    t.integer "death_year"
    t.text "biography", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quote_lists", force: :cascade do |t|
    t.integer "quote_id", null: false
    t.integer "philosopher_id", null: false
    t.integer "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_quote_lists_on_category_id"
    t.index ["philosopher_id"], name: "index_quote_lists_on_philosopher_id"
    t.index ["quote_id"], name: "index_quote_lists_on_quote_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.text "quote_text", null: false
    t.integer "publication_year"
    t.text "comment"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_quotes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "fname", null: false
    t.string "lname", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.boolean "is_admin", default: false
    t.string "status", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "quote_lists", "categories"
  add_foreign_key "quote_lists", "philosophers"
  add_foreign_key "quote_lists", "quotes"
  add_foreign_key "quotes", "users"
end
