class AddIconToCategorias < ActiveRecord::Migration
  def change
    add_column :categorias, :icono, :string
  end
end
