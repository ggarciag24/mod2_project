class Player < ApplicationRecord
  has_many :team_players
  has_many :teams, through: :team_players

  def self.find_players_with_position(position)
      Player.where(position: position)
  end



end
