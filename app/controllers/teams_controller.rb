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
  @team.user_id = current_user.id

  if @team.valid?
    @team.save
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

  pre_edit_p = TeamPlayer.select do |indiv_tp|
    indiv_tp.team_id == team.id
  end
  pre_edit_p.each do |play|
    play.destroy
  end
  name = params[:team][:name]
  city = params[:team][:city]
  mascot = params[:team][:mascot]
  point_guard = params[:team][:point_guard_id]
  shooting_guard = params[:team][:shooting_guard_id]
  small_forward = params[:team][:small_forward_id]
  power_forward = params[:team][:power_forward_id]
  center = params[:team][:center_id]

  team.update(name: name, city: city, mascot: mascot, point_guard_id: point_guard, shooting_guard_id: shooting_guard, small_forward_id: small_forward, power_forward_id: power_forward, center_id: center )

  redirect_to team_path(team)
end

def destroy
  Team.find(params[:id]).destroy

  redirect_to teams_path
end


private

  def team_params
    params.require(:team).permit(:name, :city, :mascot, :point_guard_id,:shooting_guard_id, :small_forward_id, :power_forward_id, :center_id,
      players_attributes: [:name, :jersey_number, :position, :points, :assists,
         :rebounds, :current_team, :FGP])
  end

end
