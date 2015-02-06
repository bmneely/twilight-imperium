class RaceSheetsController < ApplicationController
  def increase_strategy_allocation
    @game = Game.find(params[:game_id])
    increase_command_counter_pool("strategy_allocation")
    redirect_to @game
  end

  def increase_fleet_supply
    @game = Game.find(params[:game_id])
    increase_command_counter_pool("fleet_supply")
    redirect_to @game
  end

  def increase_command_pool
    @game = Game.find(params[:game_id])
    increase_command_counter_pool("command_pool")
    redirect_to @game
  end

  def decrease_strategy_allocation
    @game = Game.find(params[:game_id])
    decrease_command_counter_pool("strategy_allocation")
    redirect_to @game
  end

  def decrease_fleet_supply
    @game = Game.find(params[:game_id])
    decrease_command_counter_pool("fleet_supply")
    redirect_to @game
  end

  def decrease_command_pool
    @game = Game.find(params[:game_id])
    decrease_command_counter_pool("command_pool")
    redirect_to @game
  end

  private
  def increase_command_counter_pool(pool)
    race_sheet = Player.find(params[:player_id]).race_sheet
    value = race_sheet.send(pool)
    value = value + 1
    race_sheet.send("#{pool}=", value)
    race_sheet.save
  end

  def decrease_command_counter_pool(pool)
    race_sheet = Player.find(params[:player_id]).race_sheet
    value = race_sheet.send(pool)
    value = value - 1
    race_sheet.send("#{pool}=", value)
    race_sheet.save
  end
end
