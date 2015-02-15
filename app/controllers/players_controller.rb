class PlayersController < ApplicationController
  after_action :verify_authorized

  def show
    @game = Game.find(params[:game_id])
    @player = Player.find(params[:id])
    @players = @game.players
    @players = @players.reject{|p| p == @player}
    authorize @player
  end

  def new
    @game = Game.find(params[:game_id])
    @users = User.all.reject{|x| @game.users.include? x.id}

    @player = Player.new
    authorize @player
  end

  def create
    @game = Game.find(params[:game_id])
    player = @game.players.create(params.require(:player).permit(:user_id))
    authorize player

    redirect_to @game, :flash => { :notice => "Player added!" }

  end
end
