class CreateCdpMovements < ActiveRecord::Migration[7.0]
  def change
    create_table :cdp_movements do |t|
      t.string :identificacion_rubro
      t.string :identificacion_rubro_interno
      t.integer :numero_cdp
      t.string :concepto_movimiento_cdp
      t.float :valor_movimiento_cdp
      t.float :saldo_cdp
      t.date :fecha_movimiento_cdp
      t.belongs_to :cdp

      t.timestamps
    end
  end
end
