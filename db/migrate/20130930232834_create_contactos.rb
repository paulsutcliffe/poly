class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.string :nombre
      t.string :apellido
      t.string :empresa
      t.string :telefono
      t.string :email
      t.string :direccion
      t.text :mensaje

      t.timestamps
    end
  end
end
