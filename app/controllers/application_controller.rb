require 'pp'
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
  	session = Session.find_by_token(cookies[:token])
    @current_user = session.user unless session.nil?
  end

  def current_user_required
  	redirect_to root_path unless current_user
  end

  def redirect_if_logged_in
  	redirect_to account_path if current_user
  end

end
