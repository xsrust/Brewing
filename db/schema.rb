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

ActiveRecord::Schema.define(version: 2019_09_05_200304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "culture_additions", force: :cascade do |t|
    t.bigint "recipe_id"
    t.bigint "culture_id"
    t.float "amount"
    t.integer "time_unit"
    t.float "time"
    t.integer "duration_unit"
    t.float "duration"
    t.float "attenuation"
    t.integer "cell_count_billions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["culture_id"], name: "index_culture_additions_on_culture_id"
    t.index ["recipe_id"], name: "index_culture_additions_on_recipe_id"
  end

  create_table "cultures", force: :cascade do |t|
    t.string "name"
    t.integer "type"
    t.integer "form"
    t.string "producer"
    t.string "product_id"
    t.integer "attenuation_min"
    t.integer "attenuation_max"
    t.float "alcohol_tolerance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fermentable_additions", force: :cascade do |t|
    t.bigint "recipe_id"
    t.bigint "fermentable_id"
    t.float "amount"
    t.integer "time_unit"
    t.float "time"
    t.integer "duration_unit"
    t.float "duration"
    t.integer "specific_gravity"
    t.integer "step"
    t.integer "use"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fermentable_id"], name: "index_fermentable_additions_on_fermentable_id"
    t.index ["recipe_id"], name: "index_fermentable_additions_on_recipe_id"
  end

  create_table "fermentables", force: :cascade do |t|
    t.string "name"
    t.integer "type"
    t.string "producer"
    t.integer "grain_group"
    t.float "potential"
    t.float "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hop_additions", force: :cascade do |t|
    t.bigint "recipe_id"
    t.bigint "hop_id"
    t.float "amount"
    t.integer "time_unit"
    t.float "time"
    t.integer "duration_unit"
    t.float "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "use"
    t.index ["hop_id"], name: "index_hop_additions_on_hop_id"
    t.index ["recipe_id"], name: "index_hop_additions_on_recipe_id"
  end

  create_table "hops", force: :cascade do |t|
    t.string "name"
    t.string "producer"
    t.string "origin"
    t.integer "year"
    t.integer "form"
    t.float "alpha_acid"
    t.float "beta_acid"
    t.integer "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.integer "type"
    t.string "author"
    t.string "coauthor"
    t.float "batch_size"
    t.float "efficency"
    t.string "style"
    t.string "notes"
    t.float "original_gravity"
    t.float "final_gravity"
    t.float "alcohol_by_volume"
    t.integer "ibu_estimate"
    t.integer "color_estimate"
    t.float "carbonation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "culture_additions", "cultures"
  add_foreign_key "culture_additions", "recipes"
  add_foreign_key "fermentable_additions", "fermentables"
  add_foreign_key "fermentable_additions", "recipes"
  add_foreign_key "hop_additions", "hops"
  add_foreign_key "hop_additions", "recipes"
end
