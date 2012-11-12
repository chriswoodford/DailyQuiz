class UpdatePlayers < ActiveRecord::Migration
  def up
    remove_column :players, :password
    remove_column :players, :salt
  end

  def down
    add_column :players, :password
    add_column :players, :salt
  end
end
