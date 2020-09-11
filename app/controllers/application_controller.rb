class ApplicationController < ActionController::Base
  before_action :configure_devise_parameters, if: :devise_controller?
  before_action :authenticate_user!
  
  protected
  
  def configure_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])  
  end
end
