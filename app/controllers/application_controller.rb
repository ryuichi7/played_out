class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  respond_to :json

  before_action :configure_permitted_parameters, if: :devise_controller?

  def angular
  	render 'layouts/application'
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :current_password) }
  end
end
