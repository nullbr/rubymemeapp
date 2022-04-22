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

ActiveRecord::Schema.define(version: 2022_04_22_164732) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categorizations", force: :cascade do |t|
    t.integer "meme_id", null: false
    t.integer "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_categorizations_on_category_id"
    t.index ["meme_id"], name: "index_categorizations_on_meme_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "meme_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meme_id"], name: "index_likes_on_meme_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "memes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image_file_name", default: "rubylogo.png"
    t.string "slug"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "review"
    t.integer "meme_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "stars"
    t.integer "user_id"
    t.index ["meme_id"], name: "index_reviews_on_meme_id"
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

  add_foreign_key "categorizations", "categories"
  add_foreign_key "categorizations", "memes"
  add_foreign_key "likes", "memes"
  add_foreign_key "likes", "users"
  add_foreign_key "reviews", "memes"
end
