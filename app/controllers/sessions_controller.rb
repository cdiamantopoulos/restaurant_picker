class SessionsController < ApplicationController
  before_filter :redirect_if_logged_in, :except => [:destroy]

  def create
  	user = User.authenticate(params[:email], params[:password])

  	if user.class == User
  		flash[:success] = "You've been logged in."
      session = user.sessions.create(token: Session.create_token)
      cookies[:token] = session.token
  		redirect_to account_path
  	elsif user == :invalid_password
      flash[:danger] = "Password is not correct."
      redirect_to login_path
    elsif user == :invalid_email
  		flash[:danger] = "Email does not exist."
      redirect_to login_path
  	end
  end

  def destroy
  	cookies.delete(:token)
  	flash[:info] = "You've been logged out successfully."
  	redirect_to root_path
  end

end
