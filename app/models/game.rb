# == Schema Information
#
# Table name: games
#
#  id          :integer          not null, primary key
#  created_at  :datetime
#  updated_at  :datetime
#  started     :boolean          default("false")
#  name        :string
#  max_players :integer
#

class Game < ActiveRecord::Base
  include BaseStrategyCards

  has_many :players
  has_one :deck
  has_one :public_objective_deck
  has_many :strategy_cards

  has_many :users, :through => :players

  after_create :new_deck
  after_create :generate_strategy_cards


  validates :name, presence: true
  validates :max_players, presence: true

  def speaker
    players.where(is_speaker: true).first
  end

  def new_deck
    self.deck = Deck.create
    self.deck.save!
    self.public_objective_deck = PublicObjectiveDeck.create
    self.public_objective_deck.save!
  end
end
