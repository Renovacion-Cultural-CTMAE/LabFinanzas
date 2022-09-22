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

ActiveRecord::Schema[7.0].define(version: 2022_09_22_033040) do
  create_table "cdp_movements", force: :cascade do |t|
    t.string "identificacion_rubro"
    t.string "identificacion_rubro_interno"
    t.integer "numero_cdp"
    t.string "concepto_movimiento_cdp"
    t.float "valor_movimiento_cdp"
    t.float "saldo_cdp"
    t.date "fecha_movimiento_cdp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cdps", force: :cascade do |t|
    t.string "numero_cdp"
    t.float "valor_cdp"
    t.string "concepto_cdp"
    t.float "valor_movimiento_cdp"
    t.string "tipo_movimiento_cdp"
    t.string "identificacion_rubro"
    t.string "identificacion_rubro_interno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dependences", force: :cascade do |t|
    t.integer "codigo_dependencia"
    t.string "nombre_dependencia"
    t.string "identificacion_rubro"
    t.string "identificacion_rubro_interno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "identificacion"
    t.string "identificacion_interna"
    t.text "observacion"
    t.integer "codigo_dependencia"
    t.string "nombre_rubro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movement_items", force: :cascade do |t|
    t.string "identificacion_rubro"
    t.string "identificacion_rubro_interno"
    t.float "presupuesto_inicial"
    t.integer "codigo_dependencia"
    t.float "valor_movimiento"
    t.string "tipo_movimiento"
    t.string "codigo_resolucion"
    t.date "fecha_resolucion"
    t.text "observacion_resolucion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rp_movements", force: :cascade do |t|
    t.string "identificacion_rubro"
    t.string "identificacion_rubro_interno"
    t.integer "numero_rp"
    t.string "concepto_movimiento_cdp"
    t.float "valor_movimiento_rp"
    t.float "saldo_rp"
    t.date "fecha_movimiento_rp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rps", force: :cascade do |t|
    t.integer "numero_rp"
    t.float "valor_rp"
    t.string "concepto_rp"
    t.float "valor_movimiento_rp"
    t.string "tipo_movimiento_rp"
    t.string "identificacion_rubro"
    t.string "identificacion_rubro_interno"
    t.integer "numero_cdp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
