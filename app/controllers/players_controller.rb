class PlayersController < ApplicationController

  def index
    @players = Player.search(params[:search])
  end

  def show
    @player = Player.find(params[:id])
  end



  def player_params
    params.require(:player).permit(:player_id)
  end

end
