class CreateRpMovements < ActiveRecord::Migration[7.0]
  def change
    create_table :rp_movements do |t|
      t.string :identificacion_rubro
      t.string :identificacion_rubro_interno
      t.integer :numero_rp
      t.string :concepto_movimiento_cdp
      t.float :valor_movimiento_rp
      t.float :saldo_rp
      t.date :fecha_movimiento_rp
      t.belongs_to :rp

      t.timestamps
    end
  end
end
