class OrderToTurnOrder < ActiveRecord::Migration
  def change
    rename_column :strategy_cards, :order, :turn_order
  end
end
