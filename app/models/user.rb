class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, 
:remember_me, :nombre, :rfc,:role,:tags_attributes
  validates_presence_of :nombre
  validates_presence_of :rfc
  validates_uniqueness_of :rfc
  validates_presence_of :role
  validates_format_of :rfc, :with => /\A([A-Z]|[a-z]|[0-9]){15}\Z/, :on => :create

  has_many :articulos, dependent: :destroy
  has_and_belongs_to_many :clientes
  has_many :facturas
  has_many :sucursales, dependent: :destroy

  ROLES = %w[fisico moral]
end
