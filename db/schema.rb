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

ActiveRecord::Schema[7.2].define(version: 2024_11_02_203002) do
  create_table "cat_ownerships", force: :cascade do |t|
    t.integer "cat_id", null: false
    t.integer "owner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cat_id"], name: "index_cat_ownerships_on_cat_id"
    t.index ["owner_id"], name: "index_cat_ownerships_on_owner_id"
  end

  create_table "cats", force: :cascade do |t|
    t.string "name"
    t.string "breed"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dog_ownerships", force: :cascade do |t|
    t.integer "dog_id", null: false
    t.integer "owner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_dog_ownerships_on_dog_id"
    t.index ["owner_id"], name: "index_dog_ownerships_on_owner_id"
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "breed"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "vet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vet_id"], name: "index_owners_on_vet_id"
  end

  create_table "vets", force: :cascade do |t|
    t.string "name"
    t.string "clinic_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cat_ownerships", "cats"
  add_foreign_key "cat_ownerships", "owners"
  add_foreign_key "dog_ownerships", "dogs"
  add_foreign_key "dog_ownerships", "owners"
  add_foreign_key "owners", "vets"
end
