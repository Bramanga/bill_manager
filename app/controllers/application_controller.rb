class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  helper_method :authorize

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize
    redirect_to root_url if !session[:user_id]
  end
end

