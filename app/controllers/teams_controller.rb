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
  byebug
  @team = Team.create(team_params)
  byebug
  redirect_to team_path(@team)
end

def edit
end

def update
end

def destroy
  @team.destroy

  redirect_to teams_path
end


private
  def team_params
    params.require(:team).permit(:name, :city, :mascot, player_attributes: [:name, :jersey_number, :position, :points,
       :assists, :rebounds, :FGP, :current_team])
  end

end
