class CreateDependencia < ActiveRecord::Migration[7.0]
  def change
    create_table :dependencia do |t|
      t.integer :codigo_dependencia
      t.string :nombre_dependencia
      t.string :identificacio_rubro
      t.string :identificacion_rubro_interno

      t.timestamps
    end
  end
end
