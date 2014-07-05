class Articulo < ActiveRecord::Base

  belongs_to :user
  has_many :articulos_facturas

  attr_accessible :nombre, :descripcion,:precio_u

  def to_label
    "#{nombre}"
  end
end
