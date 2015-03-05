class StrategyCardsController < ApplicationController
  def index
    @game = Game.find(params[:game_id])
    @strategy_cards = @game.strategy_cards
  end

  def add_bonus
    @game = Game.find(params[:game_id])
    @strategy_cards = @game.strategy_cards

    strategy_card = StrategyCard.find(params[:id])
    strategy_card.bonuses += 1
    strategy_card.save!

    render action: "index"
  end

  def clear_bonuses
    @game = Game.find(params[:game_id])
    @strategy_cards = @game.strategy_cards

    strategy_card = StrategyCard.find(params[:id])
    strategy_card.bonuses = 0
    strategy_card.save!

    render action: "index"
  end

  def claim
    player = Player.find(params[:player_id])
    strategy_card = StrategyCard.find(params[:strategy_card_id])

    strategy_card.claim_card(player)

    @game = player.game
    @strategy_cards = @game.strategy_cards
    render action: "index"
  end

  def reset
    @game = Game.find(params[:game_id])
    @strategy_cards = @game.strategy_cards

    @strategy_cards.update_all(player_id: nil)

    render action: "index"
  end
end
