class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
   @game = Game.new
  end

  def show
    @game = Game.find(params[:id])
    @players = @game.players
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      flash[:notice] = "New game was created."
      redirect_to @game
    else
      flash[:error] = "There was an error creating the game. Please try again."
      render :new
    end
  end

  def reveal_objective
    @game = Game.find(params[:id])
    player = Player.find(game_params[:players])
    @game.public_objective_deck.reveal_objective(@game, player)

    redirect_to @game
  end

  private
  def game_params
    params.require(:game).permit(:name, :max_players, :players)
  end
end
