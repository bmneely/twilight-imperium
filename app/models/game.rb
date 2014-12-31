class Game < ActiveRecord::Base
  has_many :players
  has_one :deck
  has_one :public_objective_deck

  has_many :users, :through => :players

  after_create :new_deck

  validates :name, presence: true
  validates :max_players, presence: true


  def new_decks
    self.deck = Deck.create
    self.deck.save!
    self.public_objective_deck = PublicObjectiveDeck.create
    self.public_objective_deck.save!
  end
end
