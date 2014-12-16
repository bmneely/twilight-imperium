class GamePolicy
  attr_reader :user, :game

  def initialize(user, game)
    @user = user
    @game = game
  end

  def new_game?
    user.present? && user.admin?
  end
end