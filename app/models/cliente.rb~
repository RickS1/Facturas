class Cliente < ActiveRecord::Base
  belongs_to :user
  has_many :facturas

  attr_accessible :nombre, :rfc, :calle, :numexterno, :numinterno, :colonia, :codpostal, :delegacion, :ciudad, :estado
  
  validates_presence_of :nombre, :message => "no puede estar vacío."
  validates_presence_of :rfc, :message => "no puede estar vacío."
  validates_presence_of :calle, :message => "no puede estar vacío."
  validates_presence_of :numexterno, :message => "no puede estar vacío."
  validates_presence_of :colonia, :message => "no puede estar vacío."
  validates_presence_of :codpostal, :message => "no puede estar vacío."
  validates_presence_of :delegacion, :message => "no puede estar vacío."
  validates_presence_of :ciudad, :message => "no puede estar vacío."
  validates_presence_of :estado, :message => "no puede estar vacío."
  validates_format_of :codpostal, :with => /\A\d{0,5}\Z/, :on => :create, :message => "no tiene un formato válido." 
  def to_label
    "#{nombre}"
  end
end
