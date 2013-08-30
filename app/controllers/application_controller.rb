require 'application_responder'
class ApplicationController < ActionController::Base
  before_filter :set_user_time_zone
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def handle_unverified_request

  end
  self.responder = ApplicationResponder
  respond_to :html, :json
  WillPaginate.per_page = 10

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  protected
  def set_user_time_zone
    Time.zone = current_user.time_zone if user_signed_in? && current_user.time_zone.present?
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :email) }
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :twitter_account,
                                                            :birthdate, :github_account, :gender, :blog_address,
                                                            :stackoverflow_account, :bitbucket_account, :bio,
                                                            :website, :password, :password_confirmation) }
    devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:first_name, :email, :password,
                                                                  :password_confirmation, :current_password,:gender,
                                                                  :twitter_account,:gitbucket_account,
                                                                  :bitbucket_account,:stackoverflow_account,
                                                                  :blog_address,:birthdate,:bio)}
  end

  layout :layouter                          #32 add displaying fields to user welcome page

  def layouter
    l = 'application'
    l = 'users' if user_signed_in?
    l = 'teachers' if teacher_signed_in?
    l
  end

  def after_sign_in_path_for(resource)
    case resource
      when User then users_welcome_path
      when Admin then hq_dashboard_index_path
      when Teacher then teachers_welcome_path
          end
    end
  end