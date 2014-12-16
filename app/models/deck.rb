class Deck < ActiveRecord::Base
  include BaseDeck
  
  belongs_to :game
  has_many :cards
  
  after_create :build_base_deck

  validates :game, presence: true

  def deal_card(player)
    puts "PLAYER"
    puts player
    puts "\n\n"
    card = draw_deck.sample
    card.player_id = player.id
    card.save!
    puts "AHHHHHHh"
    puts "AHHHHHHh"
    puts "AHHHHHHh"
    puts card
    puts card.id
    puts "AHHHHHHh"
    puts "AHHHHHHh"

    CardMailer.deal_card_email(player.user, card).deliver
  end

  def draw_deck
    cards.where(discarded: nil, player: nil)
  end

  def discard_deck
    cards.where(discarded: true)
  end

  def dealt_cards
    cards.where.not(player: nil)
  end
end
