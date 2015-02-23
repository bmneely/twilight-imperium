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

require 'test_helper'

class StrategyCardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
