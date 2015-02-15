class ObjectiveCardsController < ApplicationController
  def mark_card_as_revealed
    @game = Game.find(params[:game_id])
    objective_card = ObjectiveCard.find(params[:objective_card_id])
    objective_card.reveal_card

    flash[:notice] = "Public Objective was revealed"
    redirect_to @game
  end

  def claim
    @game = Game.find(params[:game_id])
    obj_card = ObjectiveCard.find(params[:objective_card_id])
    player = current_player(@game, current_user)
    obj_card.player_ids << player.id
    obj_card.save!
    flash[:notice] = "Public objective claim"
    redirect_to @game
  end

  private
  def current_player(game, user)
    game_players = game.players
    game_players.where(user_id: user.id).first
  end
end
