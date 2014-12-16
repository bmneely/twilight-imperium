class DeckPolicy
  attr_reader :user, :deck

  def initialize(user, deck)
    @user = user
    @deck = deck
  end

  def show?
    @user == @player.user
  end

  def deal?
    user.present? && user.admin?
  end
end