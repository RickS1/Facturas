class Factura < ActiveRecord::Base
  belongs_to :user
  belongs_to :cliente
  belongs_to :sucursal
  has_many :articulos_facturas


end
