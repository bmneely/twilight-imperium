class CardsController < ApplicationController

  def play
    @game = Game.find(params[:game_id])
    @player = Player.find(params[:player_id])
    @card = Card.find(params[:id])

    @card.discarded = true
    @card.player = nil
    @card.save!

    redirect_to [@game, @player], :flash => { :notice => "Card #{@card.name} has been played" }

  end
end
