class CreateRaceSheets < ActiveRecord::Migration
  def change
    create_table :race_sheets do |t|
      t.references :player, index: true
      t.integer :strategy_allocation
      t.integer :fleet_supply
      t.integer :command_pool
      t.integer :trade_goods
      t.text :racial_ability

      t.timestamps
    end
  end
end
