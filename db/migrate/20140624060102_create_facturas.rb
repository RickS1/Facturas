class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.belongs_to :user
      t.belongs_to :cliente
      t.belongs_to :sucursal
      t.decimal :total, :precision => 25, :scale => 2
      t.string :folio
      t.string :pdf

      t.timestamps
    end

  end
end
