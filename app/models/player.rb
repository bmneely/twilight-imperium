class Player < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
  has_many :cards

  def name
    user.name
  end

  def email
    user.email
  end
end
