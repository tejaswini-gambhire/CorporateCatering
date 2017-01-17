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

ActiveRecord::Schema.define(version: 20170113014006) do

  create_table "Companies", force: :cascade do |t|
    t.string   "name"
    t.integer  "phone",      limit: 10
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.         "location"
    t.         "email"
  end

  create_table "companies_daily_menus", id: false, force: :cascade do |t|
    t.integer "company_id",    null: false
    t.integer "daily_menu_id", null: false
    t.index ["company_id", "daily_menu_id"], name: "index_companies_daily_menus_on_company_id_and_daily_menu_id"
    t.index ["daily_menu_id", "company_id"], name: "index_companies_daily_menus_on_daily_menu_id_and_company_id"
  end

  create_table "daily_menus", force: :cascade do |t|
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "price"
  end

  create_table "daily_menus_menu_items", id: false, force: :cascade do |t|
    t.integer "daily_menu_id", null: false
    t.integer "menu_item_id",  null: false
    t.index ["daily_menu_id", "menu_item_id"], name: "index_daily_menus_menu_items_on_daily_menu_id_and_menu_item_id"
    t.index ["menu_item_id", "daily_menu_id"], name: "index_daily_menus_menu_items_on_menu_item_id_and_daily_menu_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "phone",       limit: 10
    t.         "designation"
    t.integer  "company_id"
    t.index ["company_id"], name: "index_employees_on_company_id"
  end

  create_table "menu_items", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.boolean  "veg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "vendor_id"
    t.index ["vendor_id"], name: "index_menu_items_on_vendor_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "Employee_id"
    t.integer  "price"
    t.integer  "DailyMenu_id"
    t.date     "date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["DailyMenu_id"], name: "index_orders_on_DailyMenu_id"
    t.index ["Employee_id"], name: "index_orders_on_Employee_id"
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "phone",      limit: 10
  end

end
