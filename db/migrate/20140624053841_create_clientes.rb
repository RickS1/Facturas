class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :rfc
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

    create_table :usuario_cliente, id: false do |t|
      t.belongs_to :cliente
      t.belongs_to :user
    end
  end
end