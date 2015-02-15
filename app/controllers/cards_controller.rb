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

  def update
    @game = Game.find(params[:game_id])
    @player = Player.find(params[:player_id])

    card = Card.find(params[:id])
    receiver = Player.find(card_params[:player_id])
    card.player = receiver

    if card.save
      CardMailer.give_card_email(receiver, @player, @game, card).deliver
      redirect_to [@game, @player], :flash => { :notice => "#{card.name} has been given to #{receiver.name}" }
    else
      redirect_to [@game, @player], :flash => { :alert => "#{card.name} has not been given to #{receiver.name}" }
    end
  end

  private
  def card_params
    params.require(:card).permit(:player_id)
  end
end
