class Articulo < ActiveRecord::Base

  belongs_to :user
  has_many :articulos_facturas

  attr_accessible :nombre, :descripcion,:precio_u

  validates_presence_of :nombre, :message => "no puede estar vacío."
  validates_presence_of :precio_u, :message => "no puede estar vacío."
  validates_numericality_of :precio_u, :message => "debe ser numérico con máximo 2 cifras decimales, mayor que 0.", :greater_than => 0

  def to_label
    "#{nombre}"
  end
end
