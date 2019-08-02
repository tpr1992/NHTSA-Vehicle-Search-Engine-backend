class UsersController < ApplicationController

  def index
    @user = User.all
    render json: @user
  end

  def show
    @users = User.find(params[:id])
    render json: @users
  end

  # def create
  #   @user = User.new(user_params)
  #   if @user.save
  #     render json: @user, status: :accepted
  #   else
  #     render json: { errors: @user.errors.full_messages }, status:
  #     :unprocessible_entity
  #   end
  # end

  def create
    @user = User.new(
      name: params[:name],
      username: params[:username],
      password: params[:password]
    )

    if @user.save
      render json: @user
    else
      render json: {errors: @user.errors.full_messages}
    end
  end


  # private
  #
  # def user_params
  #   params.require(:user).permit(:name, :display_name, :password)
  # end

end
