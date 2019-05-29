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

ActiveRecord::Schema.define(version: 2019_05_28_184145) do

  create_table "breeds", force: :cascade do |t|
    t.string "name"
    t.string "size"
    t.string "temperament"
    t.string "life_expectancy"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dog_breeds", force: :cascade do |t|
    t.integer "dog_id"
    t.integer "breed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["breed_id"], name: "index_dog_breeds_on_breed_id"
    t.index ["dog_id"], name: "index_dog_breeds_on_dog_id"
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "size"
    t.boolean "kids_compatible"
    t.boolean "pets_compatible"
    t.string "image_url"
    t.boolean "fixed"
    t.boolean "vaccinated"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "trainer_id"
    t.integer "owner_id"
    t.index ["owner_id"], name: "index_dogs_on_owner_id"
    t.index ["trainer_id"], name: "index_dogs_on_trainer_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.boolean "available_on_weekends"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
