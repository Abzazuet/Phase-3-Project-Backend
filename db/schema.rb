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

ActiveRecord::Schema.define(version: 2022_08_13_223352) do

  create_table "dessert_regimes", force: :cascade do |t|
    t.integer "dessert_id"
    t.integer "regime_id"
  end

  create_table "desserts", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "carbohydrates"
    t.integer "proteins"
    t.integer "fat"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
  end

  create_table "recipes", force: :cascade do |t|
    t.integer "dessert_id"
    t.integer "ingredient_id"
  end

  create_table "regimes", force: :cascade do |t|
    t.string "name"
  end

end
