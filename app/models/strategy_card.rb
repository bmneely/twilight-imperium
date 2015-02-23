# == Schema Information
#
# Table name: strategy_cards
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  player_id  :integer
#  name       :string
#  primary    :text
#  secondary  :text
#  order      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  bonuses    :integer          default("0")
#

class StrategyCard < ActiveRecord::Base
  belongs_to :game
  belongs_to :player

  default_scope { order('turn_order') }

  def claim_card(player)
    self.player = player
    self.save!
  end
end
