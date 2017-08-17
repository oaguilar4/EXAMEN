class CreateEstrellas < ActiveRecord::Migration
  def change
    create_table :estrellas do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
