require 'application_responder'

class ApplicationController < ActionController::Base
  before_filter :set_user_time_zone


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




  def after_sign_in_path_for(resource)
    case resource
      when User then users_welcome_path

      when Admin then hq_dashboard_index_path

      when Teacher then teachers_welcome_path
          end
    end


  end