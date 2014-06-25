class CreateSucursals < ActiveRecord::Migration
  def change
    create_table :sucursals do |t|
      t.belongs_to :user
      t.string :alias
      t.string :calle
      t.string :numexterno
      t.string :numinterno
      t.string :colonia
      t.string :codpostal
      t.string :delegacion
      t.string :ciudad
      t.string :estado

      t.timestamps
    end
  end
end