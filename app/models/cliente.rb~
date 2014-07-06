class Cliente < ActiveRecord::Base
  belongs_to :user
  has_many :facturas

  attr_accessible :nombre, :rfc, :calle, :numexterno, :numinterno, :colonia, :codpostal, :delegacion, :ciudad, :estado
  
  def to_label
    "#{nombre}"
  end
end
