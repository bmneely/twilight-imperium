class StrategyCard < ActiveRecord::Base
  belongs_to :game
  belongs_to :player

  default_scope { order('order ASC') }

  def claim_card(player)
    self.player = player
    self.save!
  end
end
