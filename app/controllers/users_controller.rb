class UsersController < ApplicationController
  
  def index
    @user = User.all
    render json: @user
  end

  def show
    @users = User.find(params[:id])
    render json: @users
  end

  def create
    @user = User.new(
      name: params[:name],
      username: params[:username],
      password: params[:password]
    )
    if @user.save
      render json: @user
    else
      render json: { errors: @user.errors.full_messages }
    end
  end
end
