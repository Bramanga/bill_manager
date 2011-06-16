class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  helper_method :current_home
  helper_method :authorize

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_home
    @current_home ||= Home.find_by_id(@current_user.home_id)
  end

  def authorize
    redirect_to root_url if !session[:user_id]
  end
end

