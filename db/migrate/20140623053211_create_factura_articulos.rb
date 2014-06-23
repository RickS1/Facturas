class CreateFacturaArticulos < ActiveRecord::Migration
  def change
    create_table :factura_articulos do |t|

      t.timestamps
    end
  end
end
