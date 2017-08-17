class CreateCometa < ActiveRecord::Migration
  def change
    create_table :cometa do |t|
      t.string :Nombre
      t.string :Longitud

      t.timestamps null: false
    end
  end
end
