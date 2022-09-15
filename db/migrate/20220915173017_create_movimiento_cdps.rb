class CreateMovimientoCdps < ActiveRecord::Migration[7.0]
  def change
    create_table :movimiento_cdps do |t|
      t.string :identificacion_del_rubro
      t.string :identificacion_del_rubro_interno
      t.integer :numero_de_cdp
      t.string :concepto_de_movimiento_cdp
      t.integer :valor_movimento_cdp
      t.float :saldo_cdp
      t.date :fecha_de_movimiento_del_cdp

      t.timestamps
    end
  end
end
