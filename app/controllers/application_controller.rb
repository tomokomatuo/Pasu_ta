class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  # def after_sign_up_path_for(resource)
  #   if current_user.adviser?
  #     new_stylist_path(resource)
  #   else
  #     new_seeker_path(resource) 
  #   end
  # end
 
  def after_sign_in_path_for(resource)
    if current_user.adviser?
      seekers_path(resource)
    else
      stylists_path(resource) 
    end
  end

  def after_sign_out_path_for(resource)
    new_user_session_path
  end
  protected
 
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:adviser, :nickname])
  end
end