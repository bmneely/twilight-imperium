class RaceSheetsController < ApplicationController
  def increase_trade_goods
    @game = Game.find(params[:game_id])
    increase_counter("trade_goods")
    redirect_to @game
  end

  def decrease_trade_goods
    @game = Game.find(params[:game_id])
    decrease_counter("trade_goods")
    redirect_to @game
  end

  def increase_strategy_allocation
    @game = Game.find(params[:game_id])
    increase_counter("strategy_allocation")
    redirect_to @game
  end

  def increase_fleet_supply
    @game = Game.find(params[:game_id])
    increase_counter("fleet_supply")
    redirect_to @game
  end

  def increase_command_pool
    @game = Game.find(params[:game_id])
    increase_counter("command_pool")
    redirect_to @game
  end

  def decrease_strategy_allocation
    @game = Game.find(params[:game_id])
    decrease_counter("strategy_allocation")
    redirect_to @game
  end

  def decrease_fleet_supply
    @game = Game.find(params[:game_id])
    decrease_counter("fleet_supply")
    redirect_to @game
  end

  def decrease_command_pool
    @game = Game.find(params[:game_id])
    decrease_counter("command_pool")
    redirect_to @game
  end

  private
  def increase_counter(pool)
    race_sheet = Player.find(params[:player_id]).race_sheet
    value = race_sheet.send(pool) || 0
    value = value + 1
    race_sheet.send("#{pool}=", value)
    race_sheet.save
  end

  def decrease_counter(pool)
    race_sheet = Player.find(params[:player_id]).race_sheet
    value = race_sheet.send(pool) || 0
    value = value - 1
    race_sheet.send("#{pool}=", value)
    race_sheet.save
  end
end
