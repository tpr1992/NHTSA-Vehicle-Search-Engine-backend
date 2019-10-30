class CarsController < ApplicationController

  def index
    @cars = Car.all
    render json: @cars
  end

  def show
    @car = Car.find(params[:id])
    render json: @car
  end

  def create
    @car = Car.new(
      brand: params[:brand],
      model: params[:model],
      user_id: params[:user_id]
    )
    if @car.save
      render json: @user
    else
      render json: {errors: @car.errors.full_messages}
    end
  end
end
