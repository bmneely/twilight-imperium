class ObjectiveCardsController < ApplicationController
  def mark_card_as_revealed
    @game = Game.find(params[:game_id])
    objective_card = ObjectiveCard.find(params[:objective_card_id])
    objective_card.reveal_card

    flash[:notice] = "Public Objective was revealed"
    redirect_to @game
  end

end
