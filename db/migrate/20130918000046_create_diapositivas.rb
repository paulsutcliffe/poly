class CreateDiapositivas < ActiveRecord::Migration
  def change
    create_table :diapositivas do |t|
      t.string :titulo
      t.text :descripcion
      t.string :imagen
      t.string :slug

      t.timestamps
    end
  end
end
