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

ActiveRecord::Schema.define(version: 20160801005450) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apartment_enquiries", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "data_to"
    t.datetime "data_from"
    t.text     "body"
    t.integer  "apartment_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["apartment_id"], name: "index_apartment_enquiries_on_apartment_id", using: :btree
  end

  create_table "apartment_images", force: :cascade do |t|
    t.string   "image"
    t.integer  "apartment_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "apartment_pages", force: :cascade do |t|
    t.integer  "apartment_id"
    t.integer  "page_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["apartment_id"], name: "index_apartment_pages_on_apartment_id", using: :btree
    t.index ["page_id"], name: "index_apartment_pages_on_page_id", using: :btree
  end

  create_table "apartments", force: :cascade do |t|
    t.string   "name"
    t.text     "information"
    t.text     "body"
    t.text     "summary"
    t.text     "infomation"
    t.string   "maps_embed_code"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "blogs", force: :cascade do |t|
    t.string   "name"
    t.string   "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enquiries", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meta_data", force: :cascade do |t|
    t.string   "title"
    t.string   "url_alias"
    t.text     "description"
    t.string   "meta_type"
    t.integer  "meta_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "name"
    t.text     "body"
    t.string   "banner"
    t.boolean  "in_menu",    default: false
    t.boolean  "home",       default: false
    t.boolean  "contact",    default: false
    t.boolean  "protected",  default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "apartment_pages", "apartments"
  add_foreign_key "apartment_pages", "pages"
end
