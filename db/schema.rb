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

ActiveRecord::Schema.define(:version => 20140705175336) do

  create_table "articulos", :force => true do |t|
    t.integer  "user_id"
    t.string   "nombre"
    t.string   "descripcion"
    t.decimal  "precio_u",    :precision => 25, :scale => 2
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "articulos_facturas", :force => true do |t|
    t.integer  "articulo_id"
    t.integer  "user_id"
    t.decimal  "cantidad"
    t.string   "ip_cliente"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "clientes", :force => true do |t|
    t.integer  "user_id"
    t.string   "nombre"
    t.string   "rfc"
    t.string   "calle"
    t.string   "numexterno"
    t.string   "numinterno"
    t.string   "colonia"
    t.string   "codpostal"
    t.string   "delegacion"
    t.string   "ciudad"
    t.string   "estado"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "facturas", :force => true do |t|
    t.integer  "user_id"
    t.integer  "cliente_id"
    t.integer  "sucursal_id"
    t.decimal  "total",       :precision => 25, :scale => 2
    t.decimal  "subtotal",    :precision => 25, :scale => 2
    t.decimal  "iva",         :precision => 25, :scale => 2
    t.string   "folio"
    t.string   "pdf"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "sucursals", :force => true do |t|
    t.integer  "user_id"
    t.string   "pseudonimo"
    t.string   "calle"
    t.string   "numexterno"
    t.string   "numinterno"
    t.string   "colonia"
    t.string   "codpostal"
    t.string   "delegacion"
    t.string   "ciudad"
    t.string   "estado"
    t.string   "telefono"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "nombre",                 :default => "", :null => false
    t.string   "rfc",                    :default => "", :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "folio",                  :default => 0,  :null => false
    t.string   "empresa",                                :null => false
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "role"
    t.string   "logo"
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["rfc"], :name => "index_users_on_rfc", :unique => true

end
