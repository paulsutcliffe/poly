class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :imagen
      t.string :slug
      t.integer :tipo_id

      t.timestamps
    end
  end
end
