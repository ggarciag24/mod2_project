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
  @team = Team.new(team_params)
  if @team.save
    redirect_to team_path(@team)
      else
        render :new
      end
end

def edit
  @team = Team.find(params[:id])

end

def update
  team = Team.find(params[:id])

  team.update(team_params)

  redirect_to team_path(team)
end

def destroy
  Team.find(params[:id]).destroy

  redirect_to teams_path
end


private
  def team_params
<<<<<<< HEAD
    params.require(:team).permit(:name, :city, :mascot, player_attributes: [:name, :jersey_number, :position, :points,
       :assists, :rebounds, :FGP, :current_team])
=======
    params.require(:team).permit(:name, :city, :mascot, :point_guard_id,:shooting_guard_id, :small_forward_id, :power_forward_id, :center_id,
      players_attributes: [:name, :jersey_number, :position, :points, :assists,
         :rebounds, :current_team, :FGP])

>>>>>>> 95cf14141ebade5debb5806e54ea0b66a3b3ea4b
  end

end
