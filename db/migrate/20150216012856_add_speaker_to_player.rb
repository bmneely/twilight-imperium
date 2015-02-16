class AddSpeakerToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :is_speaker, :boolean
  end
end
