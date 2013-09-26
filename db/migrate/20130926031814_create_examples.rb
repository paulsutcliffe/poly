class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.string :title
      t.text :description
      t.string :slug

      t.timestamps
    end
  end
end
