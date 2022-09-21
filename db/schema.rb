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

ActiveRecord::Schema[7.0].define(version: 2022_09_15_174547) do
  create_table "cdps", force: :cascade do |t|
    t.string "numero_de_cdp"
    t.integer "valor_del_cdp"
    t.string "concepto_cdp"
    t.integer "valor_del_movimiento_cdp"
    t.string "tipo_de_movimiento_cdp"
    t.string "identificacion_del_rubro"
    t.string "identificacion_del_rubro_interno"
    t.integer "rubro_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rubro_id"], name: "index_cdps_on_rubro_id"
  end

  create_table "dependencia", force: :cascade do |t|
    t.integer "codigo_dependencia"
    t.string "nombre_dependencia"
    t.string "identificacio_rubro"
    t.string "identificacion_rubro_interno"
    t.integer "rubro_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rubro_id"], name: "index_dependencia_on_rubro_id"
  end

  create_table "movimiento_cdps", force: :cascade do |t|
    t.string "identificacion_del_rubro"
    t.string "identificacion_del_rubro_interno"
    t.integer "numero_de_cdp"
    t.string "concepto_de_movimiento_cdp"
    t.integer "valor_movimento_cdp"
    t.float "saldo_cdp"
    t.date "fecha_de_movimiento_del_cdp"
    t.integer "cdp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cdp_id"], name: "index_movimiento_cdps_on_cdp_id"
  end

  create_table "movimiento_rps", force: :cascade do |t|
    t.string "identificacion_rubro"
    t.string "identificacion_rubro_interno"
    t.integer "numero_rp"
    t.string "concepto_movimiento_cdp"
    t.integer "valor_movimento_rp"
    t.float "saldo_rp"
    t.date "fecha_del_movimiento_rp"
    t.integer "rp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rp_id"], name: "index_movimiento_rps_on_rp_id"
  end

  create_table "movimiento_rubros", force: :cascade do |t|
    t.string "identificacion_rubro"
    t.string "identificacion_rubro_interno"
    t.float "presupuesto_inicial"
    t.integer "codigo_dependencia"
    t.float "valor_movimiento"
    t.string "tipo_movimiento"
    t.string "codigo_resolucion"
    t.date "fecha_resolucion"
    t.text "observacion_resolucion"
    t.integer "rubro_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rubro_id"], name: "index_movimiento_rubros_on_rubro_id"
  end

  create_table "rps", force: :cascade do |t|
    t.integer "numero_de_rp"
    t.float "valor_de_rp"
    t.string "concepto_rp"
    t.integer "valor_movimiento_rp"
    t.string "tipo_de_movimiento_rp"
    t.string "identificacion_del_rubro"
    t.string "identificacion_del_rubro_interno"
    t.integer "numero_cdp"
    t.integer "cdp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cdp_id"], name: "index_rps_on_cdp_id"
  end

  create_table "rubros", force: :cascade do |t|
    t.string "identificacion_del_rubro"
    t.string "identificacion_rubro_interno"
    t.text "observacion"
    t.integer "codigo_dependencia"
    t.string "nombres_del_rubro"
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
