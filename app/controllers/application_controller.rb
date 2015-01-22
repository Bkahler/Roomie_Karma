class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  before_filter :authorize

  def authorize
    redirect_to new_session_path unless current_household
  end

end
