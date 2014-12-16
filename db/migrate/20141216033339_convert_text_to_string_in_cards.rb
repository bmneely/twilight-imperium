class ConvertTextToStringInCards < ActiveRecord::Migration
  def change
    change_column :cards, :text, :text
  end
end
