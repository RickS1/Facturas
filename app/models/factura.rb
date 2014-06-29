class Factura < ActiveRecord::Base
  belongs_to :user
  belongs_to :cliente
  belongs_to :sucursal
  has_and_belongs_to_many :articulos
end
