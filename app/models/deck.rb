class Deck < ActiveRecord::Base
  include BaseDeck
  
  belongs_to :game
  has_many :cards
  
  after_create :build_base_deck

  validates :game, presence: true

  def draw_deck
    cards.where(discarded: nil, player: nil)
  end

  def discard_pile
  end

  def dealt_cards
  end
end
