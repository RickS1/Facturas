class Sucursal < ActiveRecord::Base

  belongs_to :user
  has_many :facturas
  belongs_to :cliente

  validates_presence_of :pseudonimo
  validates_presence_of :calle
  validates_presence_of :numexterno
  validates_presence_of :colonia
  validates_presence_of :codpostal
  validates_presence_of :delegacion
  validates_presence_of :ciudad
  validates_presence_of :estado
  validates_presence_of :telefono
  validates_format_of   :telefono, :with => /\A[0-9]{8,15}\Z/, :on => :create


  attr_accessible :pseudonimo, :calle, :numexterno, :numinterno, 
:colonia, :codpostal, :delegacion, :ciudad, :estado, :telefono


  def to_label
    "#{pseudonimo}"
  end

end
