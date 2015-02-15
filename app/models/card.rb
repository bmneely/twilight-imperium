# == Schema Information
#
# Table name: cards
#
#  id         :integer          not null, primary key
#  deck_id    :integer
#  player_id  :integer
#  name       :string(255)
#  text       :text(255)
#  discarded  :boolean          default(FALSE)
#  created_at :datetime
#  updated_at :datetime
#

class Card < ActiveRecord::Base
  belongs_to :deck
  belongs_to :player

  def play_card
    self.discarded = true
    self.player = nil
    self.save!
  end
end
