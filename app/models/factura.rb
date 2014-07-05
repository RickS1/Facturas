class Factura < ActiveRecord::Base
  belongs_to :user
  belongs_to :cliente
  belongs_to :sucursal

  attr_accessible :cliente_id, :sucursal_id

  validates_presence_of :cliente_id
  validates_presence_of :sucursal_id

end
