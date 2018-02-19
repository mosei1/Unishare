class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :drivers_license, :car_make, :car_model,:car_color, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :drivers_license, :car_make, :car_model, :car_color, :email, :password, :password_confirmation, :current_password)
  end
end