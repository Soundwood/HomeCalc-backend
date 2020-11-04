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

ActiveRecord::Schema.define(version: 2020_11_04_040531) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mortg_interest_rates", force: :cascade do |t|
    t.string "credit_score"
    t.integer "loan_length_yrs"
    t.decimal "interest_rate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prop_tax_rates", force: :cascade do |t|
    t.string "state"
    t.decimal "tax_rate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "scenarios", force: :cascade do |t|
    t.decimal "net_income"
    t.decimal "income_after_tax"
    t.decimal "monthly_debt"
    t.string "credit_score"
    t.decimal "downpayment"
    t.string "state"
    t.string "city"
    t.bigint "prop_tax_rate_id", null: false
    t.bigint "mortg_interest_rate_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mortg_interest_rate_id"], name: "index_scenarios_on_mortg_interest_rate_id"
    t.index ["prop_tax_rate_id"], name: "index_scenarios_on_prop_tax_rate_id"
  end

  add_foreign_key "scenarios", "mortg_interest_rates"
  add_foreign_key "scenarios", "prop_tax_rates"
end
