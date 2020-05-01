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
