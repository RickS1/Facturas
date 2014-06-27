class Subcuentum < ActiveRecord::Base
  devise :database_authenticatable, :validatable 

  attr_accessible :alias, :rfc, :password, :password_confirmation, 
:tags_attributes
  belongs_to :user
end
