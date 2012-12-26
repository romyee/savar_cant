# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121226073008) do

  create_table "form_fields", :force => true do |t|
    t.string   "label"
    t.string   "answer_type"
    t.text     "answer_options"
    t.integer  "form_id"
    t.text     "suggation"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "form_fields", ["form_id"], :name => "index_form_fields_on_form_id"

  create_table "forms", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "note"
    t.integer  "status",       :default => 1
    t.string   "sub_title"
    t.text     "instructions"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "employee_id",                    :null => false
    t.string   "first_name",                     :null => false
    t.string   "last_name"
    t.string   "email",                          :null => false
    t.text     "address"
    t.string   "phone"
    t.string   "designation"
    t.integer  "role",            :default => 1
    t.string   "username"
    t.string   "salt_key"
    t.string   "salted_password"
    t.string   "reset_hash"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "vehicle_types", :force => true do |t|
    t.string   "type_name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "vehicles", :force => true do |t|
    t.string   "vehicle_id"
    t.integer  "vehicle_type_id"
    t.string   "unit_id"
    t.string   "vin_id"
    t.text     "description"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "vehicles", ["vehicle_type_id"], :name => "index_vehicles_on_vehicle_type_id"

end
