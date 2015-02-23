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

class ClaimedObjective < ActiveRecord::Base
  belongs_to :objective_card
  belongs_to :player
end
