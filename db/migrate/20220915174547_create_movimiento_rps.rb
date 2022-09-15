class CreateMovimientoRps < ActiveRecord::Migration[7.0]
  def change
    create_table :movimiento_rps do |t|
      t.string :identificacion_rubro
      t.string :identificacion_rubro_interno
      t.integer :numero_rp
      t.string :concepto_movimiento_cdp
      t.integer :valor_movimento_rp
      t.float :saldo_rp
      t.date :fecha_del_movimiento_rp

      t.timestamps
    end
  end
end
