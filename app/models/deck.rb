# == Schema Information
#
# Table name: decks
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Deck < ActiveRecord::Base
  include BaseDeck

  belongs_to :game
  has_many :cards

  after_create :build_base_deck

  validates :game, presence: true

  def deal_card(player)
    card = draw_deck.sample

    if !card
      discard_deck.update_all(discarded: false)
      card = draw_deck.sample
    end

    card.player = player
    card.save!

    CardMailer.deal_card_email(player, game, card).deliver
  end

  def draw_deck
    cards.where(discarded: false, player: nil)
  end

  def discard_deck
    cards.where(discarded: true)
  end

  def dealt_cards
    cards.where(discarded: false).where.not(player: nil)
  end
end
