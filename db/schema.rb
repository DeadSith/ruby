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

ActiveRecord::Schema.define(version: 2019_10_14_115405) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calls", force: :cascade do |t|
    t.integer "call_length"
    t.datetime "time", default: -> { "CURRENT_TIMESTAMP" }
    t.bigint "source_number_id"
    t.bigint "target_number_id"
    t.index ["source_number_id"], name: "index_calls_on_source_number_id"
    t.index ["target_number_id"], name: "index_calls_on_target_number_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name", null: false
    t.string "surname", null: false
    t.bigint "city_id"
    t.index ["city_id"], name: "index_customers_on_city_id"
  end

  create_table "numbers", force: :cascade do |t|
    t.string "number", null: false
    t.bigint "customer_id"
    t.index ["customer_id"], name: "index_numbers_on_customer_id"
  end

end
