# == Schema Information
#
# Table name: cards
#
#  id         :integer          not null, primary key
#  deck_id    :integer
#  player_id  :integer
#  name       :string
#  text       :text
#  discarded  :boolean          default("false")
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class CardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
