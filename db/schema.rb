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

ActiveRecord::Schema.define(version: 2019_05_10_101451) do

  create_table "offers", force: :cascade do |t|
    t.text "title", null: false
    t.integer "offer_type", null: false
    t.integer "discount_type"
    t.float "discount"
    t.float "spend_over_limit"
    t.datetime "valid_from", null: false
    t.datetime "valid_to", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_offers_on_title"
  end

  create_table "products", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.float "price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_products_on_title"
  end

  create_table "promotions", force: :cascade do |t|
    t.text "title", null: false
    t.integer "promotion_type", null: false
    t.float "discount"
    t.integer "discount_type"
    t.integer "multiple_min_items"
    t.integer "multiple_item_price"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "valid_from"
    t.datetime "valid_to"
    t.index ["product_id"], name: "index_promotions_on_product_id"
    t.index ["title"], name: "index_promotions_on_title"
  end

end
