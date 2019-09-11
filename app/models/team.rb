class Team < ApplicationRecord
  has_many :team_players
  has_many :players, through: :team_players
  belongs_to :user
  accepts_nested_attributes_for :players
  validates :name, presence: true
  validates :city, presence: true
  validates :mascot, presence: true


  def point_guard_id=(integer_id)
    self.players << Player.find(integer_id)
  end

  def point_guard_id
    if self.players.where(position: "PG")[0]
      self.players.where(position: "PG")[0].id
    else
      nil
    end
  end

  def shooting_guard_id=(integer_id)
    self.players << Player.find(integer_id)
  end

  def shooting_guard_id
    if self.players.where(position: "SG")[0]
      self.players.where(position: "SG")[0].id
    else
      nil
    end

    def small_forward_id=(integer_id)
      self.players << Player.find(integer_id)
    end

    def small_forward_id
      if self.players.where(position: "SF")[0]
        self.players.where(position: "SF")[0].id
      else
        nil
      end
    end

    def power_forward_id=(integer_id)
      self.players << Player.find(integer_id)
    end

    def power_forward_id
      if self.players.where(position: "PF")[0]
        self.players.where(position: "PF")[0].id
      else
        nil
      end
    end

    def center_id=(integer_id)
      self.players << Player.find(integer_id)
    end

    def center_id
      if self.players.where(position: "C")[0]
        self.players.where(position: "C")[0].id
      else
        nil
      end
    end

  end



end
