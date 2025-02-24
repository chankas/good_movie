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

ActiveRecord::Schema[7.1].define(version: 2025_02_18_152825) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_movies", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_category_movies_on_category_id"
    t.index ["movie_id"], name: "index_category_movies_on_movie_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "movie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_favorites_on_movie_id"
    t.index ["user_id", "movie_id"], name: "index_favorites_on_user_id_and_movie_id", unique: true
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "original_title"
    t.text "overview"
    t.date "release_date"
    t.string "poster_path"
    t.string "original_language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "vote_average", default: 0.0
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_movies_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "favorites", "movies"
  add_foreign_key "favorites", "users"
  add_foreign_key "movies", "users"
end
