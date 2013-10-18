class CreateCategorias < ActiveRecord::Migration
  def change
    create_table :categorias do |t|
      t.string :nombre
      t.text :descripcion
      t.string :imagen
      t.string :slug

      t.timestamps
    end
  end
end
