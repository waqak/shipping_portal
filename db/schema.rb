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

ActiveRecord::Schema.define(:version => 20121220101707) do

  create_table "shipping_lines", :force => true do |t|
    t.integer  "user_id"
    t.text     "address"
    t.string   "email"
    t.string   "contact_person"
    t.string   "contact_number"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "ships", :force => true do |t|
    t.integer  "shipping_line_id"
    t.integer  "load_capacity"
    t.integer  "volume_capacity"
    t.string   "ship_make"
    t.string   "ship_model"
    t.integer  "ship_model_year"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "user_types", :force => true do |t|
    t.string   "user_type"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.integer  "user_type_id"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
