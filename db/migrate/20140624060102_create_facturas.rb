class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.belongs_to :user
      t.belongs_to :cliente
      t.decimal :precio_u, :precision => 25, :scale => 2
      t.decimal :cantidad, :precision => 25, :scale => 2
      t.decimal :subtotal, :precision => 25, :scale => 2
      t.decimal :iva, :precision => 25, :scale => 2
      t.decimal :total, :precision => 25, :scale => 2

      t.timestamps
    end

    create_table :articulos_facturas, id: false do |t|
      t.belongs_to :factura
      t.belongs_to :articulo
    end
  end
end
