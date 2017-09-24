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

ActiveRecord::Schema.define(version: 20170924080217) do

  create_table "admins", force: :cascade do |t|
    t.string "Email"
    t.string "Name"
    t.string "Password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string "Status"
    t.string "Model"
    t.string "Manufacturer"
    t.float "Rate"
    t.string "License_Tag"
    t.string "Style"
    t.string "Location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "Username"
    t.string "Email"
    t.integer "No_Of_Cars_Rented"
    t.string "password_digest"
    t.float "Rental_Charge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role", default: "user"
  end

  create_table "reservations", force: :cascade do |t|
    t.string "Reservation_Id"
    t.string "Customer_Email"
    t.datetime "Checkout_Date"
    t.float "Amount"
    t.string "Checkout_Status"
    t.datetime "Return_Date"
    t.string "License_Tag"
    t.string "Drop_Off_Location"
    t.string "Reservation_Status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "super_admins", force: :cascade do |t|
    t.string "Name"
    t.string "Password"
    t.string "Email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
