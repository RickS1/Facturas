class CreateArticulosFacturas < ActiveRecord::Migration
  def change
    create_table :articulos_facturas do |t|
      t.belongs_to :articulo
      t.belongs_to :factura
      t.belongs_to :user
      t.decimal :precio_u, :precision => 25, :scale => 2
      t.decimal :cantidad
      t.decimal :subtotal, :precision => 25, :scale => 2
      t.decimal :iva, :precision => 25, :scale => 2
      t.string :ip_cliente

      t.timestamps
    end
  end
end
