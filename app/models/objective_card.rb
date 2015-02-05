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

  def reveal_card
    self.revealed = true
    self.save!

    CardMailer.new_public_objective_card(public_objective_deck.game, self).deliver
  end
end
