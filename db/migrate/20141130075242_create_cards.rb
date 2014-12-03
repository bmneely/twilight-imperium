class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.belongs_to :deck, index: true
      t.belongs_to :player, index: true
      t.string :name
      t.string :text
      t.boolean :discarded, :default => false

      t.timestamps
    end
  end
end
