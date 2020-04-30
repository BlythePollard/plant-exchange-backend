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

ActiveRecord::Schema.define(version: 2020_04_30_235100) do

  create_table "cart_plants", force: :cascade do |t|
    t.integer "cart_id"
    t.integer "plant_id"
  end

  create_table "carts", force: :cascade do |t|
    t.boolean "checkout", default: false
    t.integer "user_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "available", default: true
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
  end

end
