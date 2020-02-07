
class UsersController < ApplicationController 
  
  def index
    users = User.all
    render json: {status: "SUCCESS", message: "Loaded all Users", data: users}, status: :ok
  end

  def show
    user = User.find(params[:id])
    render json:{status:"SUCCESS", message: "Loaded individual user", data: user}, status: :ok
  end

  def create
    user = User.new(user_params)
    if user.save
      render json:{status:"SUCCESS", message:"Created new user", data: user}, status: :ok
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end



end


  