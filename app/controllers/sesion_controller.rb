class SesionController < Devise::SessionsController

  protected

  def after_sign_in_path_for(resource)
     '/facturas'
  end

end
