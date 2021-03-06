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

ActiveRecord::Schema.define(:version => 20150116052159) do

  create_table "kaui_allowed_user_tenants", :force => true do |t|
    t.integer  "kaui_allowed_user_id"
    t.integer  "kaui_tenant_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "kaui_allowed_user_tenants", ["kaui_allowed_user_id", "kaui_tenant_id"], :name => "kaui_allowed_user_tenants_uniq", :unique => true

  create_table "kaui_allowed_users", :force => true do |t|
    t.string   "kb_username"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "kaui_allowed_users", ["kb_username"], :name => "index_kaui_allowed_users_on_kb_username", :unique => true

  create_table "kaui_tenants", :force => true do |t|
    t.string   "name"
    t.string   "kb_tenant_id"
    t.string   "api_key"
    t.string   "encrypted_api_secret"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "kaui_users", :force => true do |t|
    t.string   "kb_username",   :null => false
    t.string   "kb_session_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "kaui_users", ["kb_username"], :name => "index_kaui_users_on_kb_username", :unique => true

end
