class Player < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
  has_many :cards
  has_one :race_sheet

  has_many :claimed_objectives
  has_many :objective_cards, :through => :claimed_objectives

  after_create :initialize_race_sheet

  def name
    user.name
  end

  def email
    user.email
  end

  def make_speaker
    old_speaker = game.speaker
    
    if old_speaker
      old_speaker.is_speaker = false
      old_speaker.save!
    end

    self.is_speaker = true
    self.save!
  end

  def victory_points
    vp = 0
    claimed_objectives.each do |claimed_objective|
      vp += claimed_objective.objective_card.value
    end

    vp
  end

  def initialize_race_sheet
    race_sheet = RaceSheet.new
    race_sheet.player_id = self.id
    race_sheet.strategy_allocation = 2
    race_sheet.command_pool = 3
    race_sheet.fleet_supply = 3
    race_sheet.save!
  end
end
