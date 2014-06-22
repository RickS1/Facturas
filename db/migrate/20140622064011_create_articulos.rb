class CreateArticulos < ActiveRecord::Migration
  def change
    create_table :articulos do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
