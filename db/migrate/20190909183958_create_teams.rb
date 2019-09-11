class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :city
      t.string :mascot
      t.integer :user_id

      t.timestamps
    end
  end
end
