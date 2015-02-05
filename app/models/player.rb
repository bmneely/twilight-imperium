class Player < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
  has_many :cards
  has_one :race_sheet

  after_create :initialize_race_sheet

  def name
    user.name
  end

  def email
    user.email
  end

  def initialize_race_sheet
    race_sheet = RaceSheet.new
    race_sheet.strategy_allocation = 2
    race_sheet.command_pool = 3
    race_sheet.fleet_supply = 3
    race_sheet.save
  end
end
