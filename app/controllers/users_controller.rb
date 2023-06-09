class UsersController < ApplicationController


  def index
    @users = User.all
    render :index
  end


  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "New user created" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
  

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: { message: "User has been deleted" }
  end

end
