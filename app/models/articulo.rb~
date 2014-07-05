class Articulo < ActiveRecord::Base

  belongs_to :user
  has_many :articulos_facturas

  attr_accessible :nombre, :descripcion

  def to_label
    "#{nombre}"
  end
end
