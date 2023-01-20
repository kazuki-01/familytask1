class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :current_user     #current_user(今ログインしているユーザー)のIDをviewでも使えるようになる
  

  def after_signup_path_for(resource)
    check_path
  end


  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :encrypted_password])
  end

end
