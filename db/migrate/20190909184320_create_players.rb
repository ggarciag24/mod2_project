class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :jersey_number
      t.string :position
      t.integer :points
      t.integer :assists
      t.integer :rebounds
      t.float :FGP
      t.string :current_team

      t.timestamps
    end
  end
end
