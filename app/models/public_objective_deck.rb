# == Schema Information
#
# Table name: public_objective_decks
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class PublicObjectiveDeck < ActiveRecord::Base
  include BaseDeck
  belongs_to :game
  has_many :objective_cards


  after_create :build_base_public_objective_deck

  def reveal_objective(game, player)
    obj_cards = objective_cards.where(revealed: false, stage: 1)
    if obj_cards.count >= 2
      reveal_card_one = obj_cards[0]
      reveal_card_two = obj_cards[1]
    elsif obj_cards.count == 1
      reveal_card_one = obj_cards.first
      reveal_card_two = objective_cards.where(revealed: false, stage: 2).first
    else
      obj_cards = objective_cards.where(revealed: false, stage: 2)
      reveal_card_one = obj_cards.first
      reveal_card_two = obj_cards.last
    end
    CardMailer.deal_public_objective_email(game, player, [reveal_card_one, reveal_card_two]).deliver
  end

  def mark_objective_as_revealed(obj_card)
    obj_card.revealed = true
    obj_card.save!
  end

  def revealed_objectives
    objective_cards.where(revealed: true)
  end
end
