class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  layout :layout_by_resource

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :whatsapp, :photo])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :whatsapp, :photo])

    devise_parameter_sanitizer.permit(:log_in, keys: [:username, :photo])
  end

  def skip_footer
    @skip_footer = true
  end

  def after_sign_in_path_for(current_user)
    habits_path
  end

  private

  def layout_by_resource
    if devise_controller?
      "authentication"
    else
      "application"
    end
  end

end
