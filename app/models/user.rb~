class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, 
:remember_me, :nombre, :rfc, :calle, :numexterno, :numinterno,
:colonia, :codpostal, :delegacion, :ciudad, :estado,  :tags_attributes
end
