class PlayerPolicy
  attr_reader :user, :player

  def initialize(user, player)
    @user = user
    @player = player
  end

  def show?
    user == player.user
  end

  def new?
    user.present? && user.admin?
  end
  
  def create?
    user.present? && user.admin?
  end
end