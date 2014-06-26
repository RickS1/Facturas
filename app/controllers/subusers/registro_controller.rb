class Subusers::RegistroController < Devise::RegistrationsController

  private

  def sign_up_params
     params.require(:user).permit(:alias, :rfc, :password, 
:password_confirmation)
  end

  def after_sign_up_path_for(resource)
     '/facturas'
  end

end
