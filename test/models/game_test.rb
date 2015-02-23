# == Schema Information
#
# Table name: games
#
#  id          :integer          not null, primary key
#  created_at  :datetime
#  updated_at  :datetime
#  started     :boolean          default("false")
#  name        :string
#  max_players :integer
#

require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
