class CreateStrategyCards < ActiveRecord::Migration
  def change
    create_table :strategy_cards do |t|
      t.belongs_to :game
      t.references :player
      t.string :name
      t.text :primary
      t.text :secondary
      t.integer :order

      t.timestamps null: false
    end
  end
end
