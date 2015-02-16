class StrategyCard < ActiveRecord::Base
  belongs_to :game
  belongs_to :player

  def claim_card(player)
    self.player = player
    self.save!
  end
end
