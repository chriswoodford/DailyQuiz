class CreateTeamMembers < ActiveRecord::Migration
  def change
    create_table :team_members do |t|
      t.integer :team_id
      t.integer :player_id

      t.timestamps
    end
    
    add_index :team_members, :team_id
    add_index :team_members, :player_id
    add_index :team_members, [:team_id, :player_id], unique: true
    
  end
end
