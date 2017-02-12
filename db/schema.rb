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

ActiveRecord::Schema.define(version: 20170212015721) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consulta", force: :cascade do |t|
    t.string   "name"
    t.string   "coords"
    t.string   "address"
    t.integer  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "owner_id"
  end

  create_table "consulta_users", id: false, force: :cascade do |t|
    t.integer "consultum_id"
    t.integer "user_id"
  end

  create_table "eventos", force: :cascade do |t|
    t.datetime "date"
    t.string   "comment"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "historial_id"
  end

  create_table "fichas", force: :cascade do |t|
    t.string   "comment"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "hora_id"
    t.integer  "historial_id"
  end

  create_table "historials", force: :cascade do |t|
    t.date     "first_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "paciente_id"
  end

  create_table "horas", force: :cascade do |t|
    t.datetime "date"
    t.string   "comment"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "paciente_id"
    t.integer  "user_id"
    t.integer  "consultum_id"
    t.integer  "ficha_id"
  end

  create_table "pacientes", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "rut"
    t.string   "address"
    t.string   "mail"
    t.date     "birthdate"
    t.string   "phone"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "historial_id"
    t.integer  "user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "role_id"
  end

end
