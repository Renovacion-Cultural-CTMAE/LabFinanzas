class CreateCdps < ActiveRecord::Migration[7.0]
  def change
    create_table :cdps do |t|
      t.string :numero_de_cdp
      t.integer :valor_del_cdp
      t.string :concepto_cdp
      t.integer :valor_del_movimiento_cdp
      t.string :tipo_de_movimiento_cdp
      t.string :identificacion_del_rubro
      t.string :identificacion_del_rubro_interno

      t.timestamps
    end
  end
end
