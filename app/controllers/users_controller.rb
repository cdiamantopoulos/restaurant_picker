class UsersController < ApplicationController
	
  def create
  	user = User.new(user_params)
    
  	if user.save
      flash[:success] = "Signed up!"
  		redirect_to login_path
  	else
      flash[:warning] = "Email is already in use."
  		redirect_to signup_path
  	end
  end

  private

  def user_params
    params.require('/signup').permit(:name, :email, :password, :password_confirmation)
  end

end

