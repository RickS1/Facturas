class Subusers::SessionsController < Devise::SessionsController 

  protected

  def sign_in_params
    params.require(:subcuentum).permit(:alias, :rfc, :password, 
:password_confirmation)
  end

  def after_sign_in_path_for(resource)
     '/facturas'
  end

end
