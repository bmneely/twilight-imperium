class ObjectiveCard < ActiveRecord::Base
  belongs_to :public_objective_deck

  def reveal_card
    self.revealed = true
    self.save!

    CardMailer.new_public_objective_card(public_objective_deck.game, self).deliver
  end
end
