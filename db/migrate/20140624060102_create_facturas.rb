class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.belongs_to :user
      t.belongs_to :cliente
      t.decimal :precio_u
      t.integer :cantidad
      t.decimal :subtotal
      t.decimal :iva
      t.decimal :total

      t.timestamps
    end

    create_table :factura_articulo, id: false do |t|
      t.belongs_to :factura
      t.belongs_to :articulo
    end
  end
end
