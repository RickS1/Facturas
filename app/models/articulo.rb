class Articulo < ActiveRecord::Base

  belongs_to :user
  has_and_belongs_to_many :facturas

  attr_accessible :nombre, :descripcion

  def to_label
    "#{nombre}"
  end
end
