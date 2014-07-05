class CreateArticulos < ActiveRecord::Migration
  def change
    create_table :articulos do |t|
      t.belongs_to :user
      t.string :nombre
      t.string :descripcion
      t.decimal :precio_u, :precision => 25, :scale => 2

      t.timestamps
    end
  end
end
