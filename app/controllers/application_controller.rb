require 'pp'
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Redirect to root if template not found.
  # This currently should only happen on certain restaurant endpoints [:show, :edit, :index]
  rescue_from ActionView::MissingTemplate, :with => :template_not_found

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

  private

  def template_not_found
    redirect_to root_path
  end

end
