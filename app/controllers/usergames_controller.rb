
class UsergamesController < ApplicationController 
  
  def index
    userGames = UserGame.all
    render json: {status: "SUCCESS", message: "Loaded all UserGames", data: userGames}, status: :ok
  end

  def show
    userGame = UserGame.find(params[:id])
    render json:{status:"SUCCESS", message: "Loaded individual userGame", data: userGame}, status: :ok
  end

  def create
    userGame = UserGame.new(userGame_params)

    if userGame.save
      render json:{status:"SUCCESS", message:"Created new userGame", data: userGame}, status: :ok
    else
      render json: userGame.errors, status: :unprocessable_entity
    end
  end

  def update
    userGame = UserGame.find(params[:id])
    if userGame.update_attributes(userGame_params)
      render json:{status:"SUCESS", message: "Updated userGame", data: userGame}, status: :ok
    else
      render json:userGame.errors, status: :unprocessable_entity
    end
  end

 
  private

  def userGame_params
    params.require(:usergame).permit(:user_id, :game_id, :win, :points)
  end


end
