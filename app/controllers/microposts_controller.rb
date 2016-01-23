class MicropostsController < ApplicationController
	before_action :current_user_required, only: [:create, :destroy, :show]

	def create
    micropost = current_user.microposts.create(content: params[:content].first)
    if micropost.save
      flash[:success] = "Micropost created!"
      redirect_to account_path
    else
    	flash[:danger] = "Form can\'t be empty."
    	redirect_to account_path
    end
  end

  def show
  	@micropost = current_user.microposts.find_by_id(params[:id])
  end

  def destroy
  	@current_user.microposts.find_by_id(params[:id]).destroy
    flash[:success] = "Micropost deleted!"
    redirect_to account_path
  end

end
