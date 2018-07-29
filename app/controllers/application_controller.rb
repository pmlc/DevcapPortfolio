class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  # currently need to comment this out
  # include DeviseWhitelist
  
  # remove below when above works
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_source
  
  def configure_permitted_parameters 
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) 
    devise_parameter_sanitizer.permit(:account_update, keys: [:name]) 
  end 
  
  def set_source
    session[:source] = params[:q] if params[:q]
  end
  
end
