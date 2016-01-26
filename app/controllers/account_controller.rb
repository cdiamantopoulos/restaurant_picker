class AccountController < ApplicationController
	before_filter :current_user_required

  def index
    @restaurant = Restaurant.new
    @restaurants = Restaurant.all
    @groups = Group.all
    @group = Group.new
  end
  
end
