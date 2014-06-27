class RegistroController < Devise::RegistrationsController

  private

  def sign_up_params
     params.require(:user).permit(:nombre, :rfc, :email, :password, 
:password_confirmation)
  end

  def account_update_params
     params.require(:user).permit(:email, :password, 
:current_password, :password_confirmation)
  end

  def after_sign_up_path_for(resource)
     '/facturas'
  end

end
