class CreateArticulosFacturas < ActiveRecord::Migration
  def change
    create_table :articulos_facturas do |t|
      t.belongs_to :articulo
      t.belongs_to :user
      t.decimal :cantidad
      t.string :ip_cliente

      t.timestamps
    end
  end
end
