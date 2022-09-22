class CreateRps < ActiveRecord::Migration[7.0]
  def change
    create_table :rps do |t|
      t.integer :numero_rp
      t.float :valor_rp
      t.string :concepto_rp
      t.float :valor_movimiento_rp
      t.string :tipo_movimiento_rp
      t.string :identificacion_rubro
      t.string :identificacion_rubro_interno
      t.integer :numero_cdp
      t.belongs_to :cdp

      t.timestamps
    end
  end
end
