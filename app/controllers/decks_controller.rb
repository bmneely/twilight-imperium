class DecksController < ApplicationController

  def show
    @deck = Deck.find(params[:id])
  end

  def discards
    @deck = Deck.find(params[:deck_id])
  end
  
  def dealt
    @deck = Deck.find(params[:deck_id])
  end

  def send_one_card
    @game = Game.find(params[:game_id])
    @deck = @game.deck
    @game.players.each do |player|
      @deck.deal_card(player)
    end

    redirect_to [@game, @deck], :flash => { :notice => "One card dealt to each player!" }
  end
end
