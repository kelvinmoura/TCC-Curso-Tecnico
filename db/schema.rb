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

ActiveRecord::Schema.define(version: 2023_01_31_053312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "full_name"
    t.string "identification"
    t.date "birth_date"
    t.integer "age"
    t.integer "role"
    t.text "description"
    t.string "image"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "post_comments", force: :cascade do |t|
    t.bigint "publication_id"
    t.bigint "user_id"
    t.text "comment", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["publication_id"], name: "index_post_comments_on_publication_id"
    t.index ["user_id"], name: "index_post_comments_on_user_id"
  end

  create_table "publication_evaluations", force: :cascade do |t|
    t.bigint "publication_id"
    t.bigint "user_id"
    t.integer "assessment", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["publication_id"], name: "index_publication_evaluations_on_publication_id"
    t.index ["user_id"], name: "index_publication_evaluations_on_user_id"
  end

  create_table "publications", force: :cascade do |t|
    t.bigint "admin_id"
    t.bigint "subject_id"
    t.string "title", null: false
    t.text "description", null: false
    t.string "image", null: false
    t.string "reference_link", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_publications_on_admin_id"
    t.index ["subject_id"], name: "index_publications_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "description", null: false
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
    t.string "full_name"
    t.string "identification"
    t.date "birth_date"
    t.integer "age"
    t.text "description"
    t.string "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "post_comments", "publications"
  add_foreign_key "post_comments", "users"
  add_foreign_key "publication_evaluations", "publications"
  add_foreign_key "publication_evaluations", "users"
  add_foreign_key "publications", "admins"
  add_foreign_key "publications", "subjects"
end
