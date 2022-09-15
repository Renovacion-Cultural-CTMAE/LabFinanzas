class CreateRps < ActiveRecord::Migration[7.0]
  def change
    create_table :rps do |t|
      t.integer :numero_de_rp
      t.float :valor_de_rp
      t.string :concepto_rp
      t.integer :valor_movimiento_rp
      t.string :tipo_de_movimiento_rp
      t.string :identificacion_del_rubro
      t.string :identificacion_del_rubro_interno
      t.integer :numero_cdp

      t.timestamps
    end
  end
end
