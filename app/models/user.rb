class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, 
:remember_me, :nombre, :rfc, :calle, :numexterno, :numinterno,
:colonia, :codpostal, :delegacion, :ciudad, :estado, :role,:tags_attributes
  validates_presence_of :nombre
  validates_presence_of :rfc
  validates_presence_of :calle
  validates_presence_of :numexterno
  validates_presence_of :colonia
  validates_presence_of :codpostal
  validates_presence_of :delegacion
  validates_presence_of :ciudad
  validates_presence_of :estado
  validates_uniqueness_of :rfc
  validates_presence_of :role

  has_many :articulos, dependent: :destroy
  has_and_belongs_to_many :clientes
  has_many :facturas

  ROLES = %w[fisico moral]
end
