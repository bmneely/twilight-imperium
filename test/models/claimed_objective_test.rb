# == Schema Information
#
# Table name: claimed_objectives
#
#  id                :integer          not null, primary key
#  objective_card_id :integer
#  player_id         :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class ClaimedObjectiveTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
