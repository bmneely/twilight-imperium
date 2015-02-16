class CreateClaimedObjectives < ActiveRecord::Migration
  def change
    create_table :claimed_objectives do |t|
      t.belongs_to :objective_card, index: true
      t.belongs_to :player, index: true

      t.timestamps null: false
    end
  end
end
