class LikedCarsController < ApplicationController

  def index
    @likedcars = LikedCar.all
    render json: @likedcars
  end

  def create
    @liked_car = LikedCar.new(
      user_id: params[:user_id],
      car_id: params[:car_id],
    )
    if @liked_car.save
      render json: @liked_car
    else
      render json: {errors: @liked_car.errors.full_messages}
    end
  end
end
