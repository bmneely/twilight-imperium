# == Schema Information
#
# Table name: race_sheets
#
#  id                  :integer          not null, primary key
#  player_id           :integer
#  strategy_allocation :integer
#  fleet_supply        :integer
#  command_pool        :integer
#  trade_goods         :integer
#  racial_ability      :text
#  created_at          :datetime
#  updated_at          :datetime
#

require 'test_helper'

class RaceSheetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
