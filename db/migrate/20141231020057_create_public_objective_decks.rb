class CreatePublicObjectiveDecks < ActiveRecord::Migration
  def change
    create_table :public_objective_decks do |t|
      t.references :game
      t.timestamps
    end
  end
end
