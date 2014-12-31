class PublicObjectiveDeck < ActiveRecord::Base
  include BaseDeck
  belongs_to :game
  has_many :objective_cards

  after_create :build_base_public_objective_deck

  def reveal_objective
    obj_cards = objective_cards.where(revealed: false, stage: 1)
    if obj_cards.any?
      reveal_card = obj_cards.first
    else
      reveal_card = objective_cards.where(revealed: false, stage: 2).first
    end
    reveal_card.revealed = true
    reveal_card.save!
    CardMailer.deal_public_objective_email(game, reveal_card).deliver
  end

  def revealed_objectives
    objective_cards.where(revealed: true)
  end
end
