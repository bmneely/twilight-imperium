class Game < ActiveRecord::Base
  has_many :players
  has_one :deck
  has_many :users, :through => :players

  after_create :new_deck

  validates :name, presence: true
  validates :max_players, presence: true


  def new_deck
    self.deck = Deck.create
    self.deck.save!
  end
end
