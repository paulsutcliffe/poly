class CreateTipos < ActiveRecord::Migration
  def change
    create_table :tipos do |t|
      t.string :nombre
      t.text :descripcion
      t.string :imagen
      t.string :slug
      t.integer :subcategoria_id

      t.timestamps
    end
  end
end
