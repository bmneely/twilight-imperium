class Deck < ActiveRecord::Base
  include BaseDeck

  belongs_to :game
  has_many :cards

  after_create :build_base_deck

  validates :game, presence: true

  def deal_card(player)
    card = draw_deck.sample
    card.player_id = player.id
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
