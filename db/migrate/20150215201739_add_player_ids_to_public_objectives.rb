class AddPlayerIdsToPublicObjectives < ActiveRecord::Migration
  def change
    add_column :objective_cards, :player_ids, :text, array: true, default: []
  end
end
