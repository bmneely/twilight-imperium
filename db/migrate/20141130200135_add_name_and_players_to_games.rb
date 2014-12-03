class AddNameAndPlayersToGames < ActiveRecord::Migration
  def change
    add_column :games, :name, :string
    add_column :games, :max_players, :integer
  end
end
