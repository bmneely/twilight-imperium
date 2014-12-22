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

  def send_to_player
    @game = Game.find(params[:game_id])
    @deck = @game.deck
    @players = @game.players
  end

  def dispatch_card
    @game = Game.find(params[:game_id])
    @deck = @game.deck
    player = Player.find(params[:player_card][:player_id])
    @deck.deal_card(player)

    redirect_to [@game, @deck], :flash => { :notice => "One card dealt to #{player.user.name}!" }
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
