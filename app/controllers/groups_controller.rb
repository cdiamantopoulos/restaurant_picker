class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :update, :destroy]
  before_filter :current_user_required

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end
  
  def create
    @group = Group.new(group_params)
    
    if @group.save
      flash[:group_success] = "New group created!"
      redirect_to account_path
    else
      flash[:group_warning] = "Group already exists."
      redirect_to account_path
    end
  end

  def destroy
    @group.destroy
    flash[:group_destroy] = "Group was successfully deleted."
    redirect_to account_path
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name)
  end

end

