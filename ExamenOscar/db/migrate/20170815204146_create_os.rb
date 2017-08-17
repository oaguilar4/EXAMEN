class CreateOs < ActiveRecord::Migration
  def change
    create_table :os do |t|
      t.string :Nombre

      t.timestamps null: false
    end
  end
end
