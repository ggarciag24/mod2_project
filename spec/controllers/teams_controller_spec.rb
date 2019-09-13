# require "rails_helper"
#
#
# let(:team) { Team.find_by(name: "Tropics") }
#
#  it "creates a team" do
#    expect(team).to_not be_nil
#  end
#
#  it "redirects to the new team's page" do
#    expect(current_path).to eq(team_path(team))
#  end


# describe TeamsController, type: :controller do
#   let(:attributes) do
#     {
#       name: "Elite",
#       city: "Laurel, MD",
#       mascot: "Blue Crab",
#
#     }
#   end
#
#   it "renders the show template" do
#     team = Team.create!(attributes)
#     get :show, id: team.id
#     expect(response).to render_template(:show)
#   end
#   end
