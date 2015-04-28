class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  #def after_sign_in_path_for(user)

 #if current_user.role == "banned"
   #vdestroy_user_session_path method: :delete
 #end
 #else
  # redirect_to "http://google.com"
 #end


 # end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit( :email, :password , :password_confirmation , :avatar ,:role) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :password_confirmation,  :current_password, :is_female, :date_of_birth , :avatar) }
  end
end
