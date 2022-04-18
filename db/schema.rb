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

ActiveRecord::Schema.define(version: 2022_04_05_125430) do

  create_table "memes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image_file_name", default: "rubylogo.png"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.text "review"
    t.integer "meme_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "stars"
    t.integer "user_id", null: false
    t.index ["meme_id"], name: "index_reviews_on_meme_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "profile_image", default: "avatar1.png"
    t.boolean "admin_status", default: false
  end

  add_foreign_key "reviews", "memes"
  add_foreign_key "reviews", "users"
end
