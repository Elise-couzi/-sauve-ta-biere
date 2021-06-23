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

ActiveRecord::Schema.define(version: 2021_06_23_085717) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bar_beers", force: :cascade do |t|
    t.integer "quantity"
    t.integer "selling_price"
    t.bigint "bar_id", null: false
    t.bigint "beer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bar_id"], name: "index_bar_beers_on_bar_id"
    t.index ["beer_id"], name: "index_bar_beers_on_beer_id"
  end

  create_table "bars", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_bars_on_user_id"
  end

  create_table "beers", force: :cascade do |t|
    t.string "name"
    t.integer "alcohol_degree"
    t.string "category"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_beers", force: :cascade do |t|
    t.integer "quantity"
    t.integer "buying_price"
    t.bigint "order_id", null: false
    t.bigint "bar_beer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bar_beer_id"], name: "index_order_beers_on_bar_beer_id"
    t.index ["order_id"], name: "index_order_beers_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "state"
    t.datetime "paid_at"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "manager", default: false
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bar_beers", "bars"
  add_foreign_key "bar_beers", "beers"
  add_foreign_key "bars", "users"
  add_foreign_key "order_beers", "bar_beers"
  add_foreign_key "order_beers", "orders"
  add_foreign_key "orders", "users"
end
