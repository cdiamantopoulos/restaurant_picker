class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      flash[:create] = "Restaurant was successfully created!"
      redirect_to account_path
    else
      render :new
    end
  end

  def destroy
    @restaurant.destroy
    flash[:destroy] = "Restaurant was successfully deleted."
    redirect_to account_path
  end

  private
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
      params.require(:restaurant).permit(:name, :style, :price)
    end
end
