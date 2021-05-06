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

ActiveRecord::Schema.define(version: 2021_05_06_182402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.bigint "type_id", null: false
    t.string "color"
    t.string "description"
    t.integer "rate_cents", default: 0, null: false
    t.string "rate_currency", default: "USD", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["type_id"], name: "index_items_on_type_id"
  end

  create_table "line_items", force: :cascade do |t|
    t.bigint "purchase_order_id", null: false
    t.integer "line_total_cents", default: 0, null: false
    t.string "line_total_currency", default: "USD", null: false
    t.integer "quantity"
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "type_id"
    t.bigint "item_id"
    t.index ["item_id"], name: "index_line_items_on_item_id"
    t.index ["purchase_order_id"], name: "index_line_items_on_purchase_order_id"
    t.index ["type_id"], name: "index_line_items_on_type_id"
  end

  create_table "price_cards", force: :cascade do |t|
    t.date "date"
    t.integer "aaa_price_cents", default: 0, null: false
    t.string "aaa_price_currency", default: "USD", null: false
    t.integer "daytona_price_cents", default: 0, null: false
    t.string "daytona_price_currency", default: "USD", null: false
    t.bigint "item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["item_id"], name: "index_price_cards_on_item_id"
  end

  create_table "purchase_orders", force: :cascade do |t|
    t.bigint "salesman_id", null: false
    t.bigint "customer_id", null: false
    t.date "date"
    t.integer "total_cents", default: 0, null: false
    t.string "total_currency", default: "USD", null: false
    t.integer "sales_tax_cents", default: 0, null: false
    t.string "sales_tax_currency", default: "USD", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "notes"
    t.bigint "account_id"
    t.index ["account_id"], name: "index_purchase_orders_on_account_id"
    t.index ["customer_id"], name: "index_purchase_orders_on_customer_id"
    t.index ["salesman_id"], name: "index_purchase_orders_on_salesman_id"
  end

  create_table "salesmen", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "items", "types"
  add_foreign_key "line_items", "purchase_orders"
  add_foreign_key "price_cards", "items"
  add_foreign_key "purchase_orders", "customers"
  add_foreign_key "purchase_orders", "salesmen"
end
