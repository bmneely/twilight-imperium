# == Schema Information
#
# Table name: objective_cards
#
#  id                       :integer          not null, primary key
#  public_objective_deck_id :integer
#  text                     :text
#  stage                    :integer
#  value                    :integer
#  revealed                 :boolean
#  created_at               :datetime
#  updated_at               :datetime
#

class ObjectiveCard < ActiveRecord::Base
  belongs_to :public_objective_deck

  has_many :claimed_objectives
  has_many :players, :through => :claimed_objectives

  def reveal_card
    self.revealed = true
    self.save!

    CardMailer.new_public_objective_card(public_objective_deck.game, self).deliver
  end

  def claiming_players
    claiming_players_names = []
    player_ids.each do |player_id|
      claiming_players_names << Player.find(player_id).name
    end

    claiming_players_names.join(", ")
  end
end
