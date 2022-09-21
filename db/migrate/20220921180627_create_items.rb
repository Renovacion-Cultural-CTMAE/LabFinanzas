class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :identificacion
      t.string :identificacion_interna
      t.text :observacion
      t.integer :codigo_dependencia
      t.string :nombre_rubro

      t.timestamps
    end
  end
end
