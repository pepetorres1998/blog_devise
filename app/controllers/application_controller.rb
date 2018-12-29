class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :phone, :admin, :creator])
  end

  private

  def require_creator
    unless user_signed_in? && (current_user.admin? || current_user.creator?)
      flash[:alert] = "You must be logged in to access this section"
      redirect_to new_user_session_path # halts request cycle
    end
  end

end
