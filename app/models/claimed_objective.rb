class ClaimedObjective < ActiveRecord::Base
  belongs_to :objective_card
  belongs_to :player
end
