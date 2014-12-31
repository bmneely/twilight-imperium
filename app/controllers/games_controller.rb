class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
   @game = Game.new
  end

  def show
    @game = Game.find(params[:id])
  end

  def create
    @game = Game.new(params.require(:game).permit(:name, :max_players))
    if @game.save
      flash[:notice] = "New game was created."
      redirect_to @game
    else
      flash[:error] = "There was an error creating the game. Please try again."
      render :new
    end
  end

  def reveal_objective
    @game = Game.find(params[:game_id])
    @game.public_objective_deck.reveal_objective

    redirect_to @game
  end
end
