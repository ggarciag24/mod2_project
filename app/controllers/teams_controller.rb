class TeamsController < ApplicationController

def index
  @teams = Team.all
end

def show
  @team = Team.find(params[:id])
end

def new
  @team = Team.new
  @players = @team.players.build
end

def create
  @team = Team.create(team_params)

  redirect_to team_path(@team)
end

def edit
end

def update
end

def destroy
end


private
  def team_params
    params.require(:team).permit(:name, :city, :mascot, player_attributes: [:name, :jersey_number, :position, :points, :assists, :rebounds, :FGP, :current_team])
  end

end
