class StrategyCardPolicy
  attr_reader :user, :strategy_card

  def initialize(user, strategy_card)
    @user = user
    @strategy_card = strategy_card
  end

  def reset?
    user.present? && user.admin?
  end

  def claim?
    user.present? && !current_player(strategy_card.game, user).strategy_card
  end

  private
  def current_player(game, user)
    game_players = game.players
    game_players.where(user_id: user.id).first
  end
end
