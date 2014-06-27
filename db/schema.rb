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

ActiveRecord::Schema.define(:version => 20140625024746) do

  create_table "articulos", :force => true do |t|
    t.integer  "user_id"
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "articulos_facturas", :id => false, :force => true do |t|
    t.integer "factura_id"
    t.integer "articulo_id"
  end

  create_table "clientes", :force => true do |t|
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
    t.decimal  "precio_u",   :precision => 25, :scale => 2
    t.decimal  "cantidad",   :precision => 25, :scale => 2
    t.decimal  "subtotal",   :precision => 25, :scale => 2
    t.decimal  "iva",        :precision => 25, :scale => 2
    t.decimal  "total",      :precision => 25, :scale => 2
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "sucursals", :force => true do |t|
    t.integer  "user_id"
    t.string   "alias"
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
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "role"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "usuario_cliente", :id => false, :force => true do |t|
    t.integer "cliente_id"
    t.integer "user_id"
  end

end
