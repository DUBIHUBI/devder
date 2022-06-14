class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :set_favourite_count

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :age, :address, :bio, :student, :desired_role, :role, :company_name, :company_type, :company_size, :funding_stage, :hq_location])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :age, :address, :bio, :student, :desired_role, :role, :company_name, :company_type, :company_size, :funding_stage, :hq_location])
  end

  # def set_favourite_count
  #   @favourite_count = current_user.favourites_as_student.count
  # end
end
