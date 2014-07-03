class CreateInfoproductos < ActiveRecord::Migration
  def change
    create_table :infoproductos do |t|
      t.string :titulo
      t.string :subtitulo

      t.timestamps
    end
  end
end
