class PlayerPolicy
  attr_reader :user, :player

  def initialize(user, player)
    @user = user
    @player = player
  end

  def show?
    user == player.user
  end
end