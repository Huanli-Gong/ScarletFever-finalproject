class ApplicationController < ActionController::Base
  before_action :require_login
  # Raises an exception to prevent CSRF attacks
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  # Adding custom paramters to allow the use to login with a username
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :email, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :password, :remember_me])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password, :password_confirmation, :current_password])
  end

  def require_login
    unless user_signed_in?
      redirect_to user_session_path 
    end
  end
end
