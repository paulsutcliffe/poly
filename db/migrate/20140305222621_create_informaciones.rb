class CreateInformaciones < ActiveRecord::Migration
  def change
    create_table :informaciones do |t|
      t.string :foto1
      t.string :foto2
      t.text :resenia
      t.text :mision
      t.text :vision

      t.timestamps
    end
  end
end
