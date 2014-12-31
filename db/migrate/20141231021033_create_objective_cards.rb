class CreateObjectiveCards < ActiveRecord::Migration
  def change
    create_table :objective_cards do |t|
      t.references :public_objective_deck
      t.text :text
      t.integer :stage
      t.integer :value
      t.boolean :revealed

      t.timestamps
    end
  end
end
