module ApplicationHelper
  def current_player(game)
    game_players = game.players
    game_players.where(user_id: current_user.id).first
  end
end
