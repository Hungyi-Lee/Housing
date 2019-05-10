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

ActiveRecord::Schema.define(version: 2019_05_10_004921) do

  create_table "houses", force: :cascade do |t|
    t.integer "user_id"
    t.integer "size"
    t.integer "built"
    t.integer "numberofparking"
    t.integer "numberofstorage"
    t.integer "numberofwindow"
    t.integer "numberofgate"
    t.string "descripofstorage"
    t.string "sizeofparking"
    t.string "typeofparking"
    t.string "typeofhouse"
    t.string "address"
    t.string "powervalue"
    t.string "sunlight"
    t.string "balcony"
    t.string "road"
    t.string "cooker"
    t.string "floor"
    t.string "floormaterial"
    t.string "typeofbuilding"
    t.string "housestatus"
    t.text "neighboar"
    t.text "link"
    t.text "clozet"
    t.text "layout"
    t.text "supplementary"
    t.float "bed"
    t.float "bath"
    t.float "price"
    t.float "pricesqft"
    t.float "hoa"
    t.float "latitude"
    t.float "longitude"
    t.boolean "bus"
    t.boolean "showerhead"
    t.boolean "diningbar"
    t.boolean "drain"
    t.boolean "elevator"
    t.boolean "commonplace"
    t.boolean "packagereceiver"
    t.boolean "gym"
    t.boolean "checked"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "likeornot"
  end

  create_table "images", force: :cascade do |t|
    t.integer "house_id"
    t.text "note"
    t.text "imageurl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "account"
    t.string "name"
    t.string "country"
    t.integer "gender"
    t.datetime "birthday"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
