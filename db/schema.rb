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

ActiveRecord::Schema.define(version: 2019_03_08_174110) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachments", force: :cascade do |t|
    t.bigint "product_id"
    t.string "archivo_file_name"
    t.string "archivo_content_type"
    t.bigint "archivo_file_size"
    t.datetime "archivo_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_attachments_on_product_id"
  end

  create_table "in_shopping_carts", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "shopping_cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_in_shopping_carts_on_product_id"
    t.index ["shopping_cart_id"], name: "index_in_shopping_carts_on_shopping_cart_id"
  end

  create_table "link_attachments", force: :cascade do |t|
    t.bigint "link_id"
    t.datetime "expiration_date"
    t.bigint "attachment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attachment_id"], name: "index_link_attachments_on_attachment_id"
    t.index ["link_id"], name: "index_link_attachments_on_link_id"
  end

  create_table "links", force: :cascade do |t|
    t.bigint "product_id"
    t.datetime "expiration_date"
    t.integer "downloads"
    t.integer "downloads_limit"
    t.string "custom_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.index ["product_id"], name: "index_links_on_product_id"
  end

  create_table "my_emails", force: :cascade do |t|
    t.string "email"
    t.string "ip"
    t.integer "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "my_payments", force: :cascade do |t|
    t.string "email"
    t.string "ip"
    t.string "status"
    t.decimal "fee", precision: 6, scale: 2
    t.string "paypal_id"
    t.decimal "tota", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "shipping_cart_id"
    t.bigint "shopping_cart_id"
    t.index ["shipping_cart_id"], name: "index_my_payments_on_shipping_cart_id"
    t.index ["shopping_cart_id"], name: "index_my_payments_on_shopping_cart_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "pricing"
    t.text "description"
    t.bigint "user_id"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.bigint "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.string "status", default: "created"
    t.string "ip"
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

  add_foreign_key "attachments", "products"
  add_foreign_key "in_shopping_carts", "products"
  add_foreign_key "in_shopping_carts", "shopping_carts"
  add_foreign_key "link_attachments", "attachments"
  add_foreign_key "link_attachments", "links"
  add_foreign_key "links", "products"
  add_foreign_key "products", "users"
end