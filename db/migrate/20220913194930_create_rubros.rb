class CreateRubros < ActiveRecord::Migration[7.0]
  def change
    create_table :rubros do |t|
      t.string :identificacion_del_rubro
      t.string :identificacion_rubro_interno
      t.text :observacion
      t.integer :codigo_dependencia
      t.string :nombres_del_rubro

      t.timestamps
    end
  end
end
