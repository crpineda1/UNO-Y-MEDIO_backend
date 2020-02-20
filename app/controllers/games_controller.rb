
  class GamesController < ApplicationController
    
    def index 
      games = Game.all
      render json: {status: "SUCCESS", message: "Loaded all games", data: games}, status: :ok
    end

    def show
      game = Game.find(params[:id])
      render json:{status:"SUCCESS", message: "Loaded individual game", data: game}, status: :ok
    end

    def create
      game = Game.new(game_params)
      if game.save
        render json:{status:"SUCCESS", message:"Created new game", data: game}, status: :ok
      else
        render json: game.errors, status: :unprocessable_entity
      end
    end

    private

    def game_params
      params.require(:game).permit(:user_id, :game_id)
    end

  end

