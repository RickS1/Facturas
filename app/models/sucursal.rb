class Sucursal < ActiveRecord::Base

  belongs_to :user

  validates_presence_of :alias
  validates_presence_of :calle
  validates_presence_of :numexterno
  validates_presence_of :colonia
  validates_presence_of :codpostal
  validates_presence_of :delegacion
  validates_presence_of :ciudad
  validates_presence_of :estado

end
