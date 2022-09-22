class CreateMovementItems < ActiveRecord::Migration[7.0]
  def change
    create_table :movement_items do |t|
      t.string :identificacion_rubro
      t.string :identificacion_rubro_interno
      t.float :presupuesto_inicial
      t.integer :codigo_dependencia
      t.float :valor_movimiento
      t.string :tipo_movimiento
      t.string :codigo_resolucion
      t.date :fecha_resolucion
      t.text :observacion_resolucion
      t.belongs_to :item

      t.timestamps
    end
  end
end
