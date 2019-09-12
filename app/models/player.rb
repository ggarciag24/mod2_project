class Player < ApplicationRecord
  has_many :team_players
  has_many :teams, through: :team_players

  def self.find_players_with_position(position)
      Player.where(position: position)
  end

  def self.search(search)
    if search
      players = Player.where(position: search)
      if players
        players
      else
        Player.all
      end
    else
      Player.all
    end
  end



end
