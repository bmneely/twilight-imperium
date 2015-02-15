class ObjectiveCardPolicy
  attr_reader :user, :objective

  def initialize(user, objective)
    @user = user
    @objective = objective
  end

  def claim?
    user.present? && !objective.player_ids.include?(current_player(objective.public_objective_deck.game, user).id)
  end

  private
  def current_player(game, user)
    game_players = game.players
    game_players.where(user_id: user.id).first
  end
end
