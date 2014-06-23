class Cliente < ActiveRecord::Base
  
  validates_presence_of :nombre
  validates_presence_of :rfc
  validates_uniqueness_of :rfc
  validates_presence_of :calle
  validates_presence_of :numexterno
  validates_presence_of :colonia
  validates_presence_of :codpostal
  validates_presence_of :delegacion
  validates_presence_of :ciudad
  validates_presence_of :estado

  belongs_to :user

end
