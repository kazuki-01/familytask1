class ApplicationController < ActionController::Base
  helper_method :current_user
  before_action :configure_permitted_parameters, if: :devise_controller?


  def after_signup_path_for(resource)
    check_path
  end



  def current_user
    if session[:user_id]          #session　IDが、nilではなかったら、current_userにsession　IDを入れる
        current_user ||= User.find(session[:user_id])
    end
  end


  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_icon])
  end

end
