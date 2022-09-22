class CreateCdps < ActiveRecord::Migration[7.0]
  def change
    create_table :cdps do |t|
      t.string :numero_cdp
      t.float :valor_cdp
      t.string :concepto_cdp
      t.float :valor_movimiento_cdp
      t.string :tipo_movimiento_cdp
      t.string :identificacion_rubro
      t.string :identificacion_rubro_interno
      t.belongs_to :item

      t.timestamps
    end
  end
end
