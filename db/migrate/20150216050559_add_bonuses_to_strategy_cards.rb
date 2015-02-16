class AddBonusesToStrategyCards < ActiveRecord::Migration
  def change
    add_column :strategy_cards, :bonuses, :integer, default: 0
  end
end
