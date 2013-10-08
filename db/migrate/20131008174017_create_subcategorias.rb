class CreateSubcategorias < ActiveRecord::Migration
  def change
    create_table :subcategorias do |t|
      t.string :nombre
      t.text :descripcion
      t.string :imagen
      t.string :icono
      t.string :slug
      t.integer :categoria_id

      t.timestamps
    end
  end
end
