class AddSeatingOrderToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :seating_order, :integer
  end
end
