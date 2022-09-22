class CreateDependences < ActiveRecord::Migration[7.0]
  def change
    create_table :dependences do |t|
      t.integer :codigo_dependencia
      t.string :nombre_dependencia
      t.string :identificacion_rubro
      t.string :identificacion_rubro_interno
      t.belongs_to :item

      t.timestamps
    end
  end
end
