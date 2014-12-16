module BaseDeck
  extend ActiveSupport::Concern

  def build_base_deck

    self.cards.create(
      name: "Advanced Reinforcements",
      text: "Place 2 Ground Forces on any one planet you control.\nPlay: As an action."
    )

    self.cards.create(
      name: "Advanced Reinforcements",
      text: "Place 2 Ground Forces on any one planet you control.\nPlay: As an action."
    )

    self.cards.create(
      name: "Alien Technology",
      text: "You may immediately spend 4 resources to receive one technology advance (for which you have the necessary prerequisites).  This cost cannot be reduced.\nPlay: As an action."
    )

    self.cards.create(
      name: "Armistice",
      text: "Choose an opponent and a planet you control.  The chosen opponent cannot invade the chosen planet this round.\nPlay: As an action."
    )

    self.cards.create(
      name: "Bribery",
      text: "You may add one additional vote to your total for each Trade Good you spend.\nPlay: Immediately after all players have voted on a law or resolution."
    )

    self.cards.create(
      name: "Communications Breakdown",
      text: "No players may play Action Cards until the end of the battle.\nPlay: Immediately before a Space Battle in which you are participating."
    )

    self.cards.create(
      name: "Communications Breakdown",
      text: "No players may play Action Cards until the end of the battle.\nPlay: Immediately before a Space Battle in which you are participating."
    )

    self.cards.create(
      name: "Courageous to the End",
      text: "Roll 2 dice.  For each roll equal to or greater than your ship’s combat value, your opponent must immediately take one casualty.  You may use this card even if your ship should not receive return fire.\nPlay: Immediately after one of your ships is destroyed."
    )

    self.cards.create(
      name: "Courageous to the End",
      text: "Roll 2 dice.  For each roll equal to or greater than your ship’s combat value, your opponent must immediately take one casualty.  You may use this card even if your ship should not receive return fire.\nPlay: Immediately after one of your ships is destroyed."
    )

    self.cards.create(
      name: "Command Summit",
      text: "Receive two Command Counters and put them in your Command Pool.\nPlay: During the Strategy Phase."
    )

    self.cards.create(
      name: "Chemical Warfare",
      text: "If you have a Dreadnought in a system containing an enemy-controlled planet, play this card to destroy half of the defending Ground Forces (round up).  Chemical Warfare bypasses enemy PDS.\nPlay: Immediately before an Invasion Combat."
    )

    self.cards.create(
      name: "Civil Defense",
      text: "Place two free PDS units on any planet you control that does not already have a PDS unit.\nPlay: As an action."
    )

    self.cards.create(
      name: "Cultural Crisis",
      text: "Choose a player (the chosen player may be yourself).  That player loses all racial special abilities this round, both advantages and disadvantages.\nPlay: During the Strategy Phase."
    )

    self.cards.create(
      name: "Direct Hit",
      text: "Destroy an opponent’s damaged ship.\nPlay: Immediately after the ship has been damaged in a Space Battle in which you are participating."
    )

    self.cards.create(
      name: "Direct Hit",
      text: "Destroy an opponent’s damaged ship.\nPlay: Immediately after the ship has been damaged in a Space Battle in which you are participating."
    )

    self.cards.create(
      name: "Direct Hit",
      text: "Destroy an opponent’s damaged ship.\nPlay: Immediately after the ship has been damaged in a Space Battle in which you are participating."
    )

    self.cards.create(
      name: "Direct Hit",
      text: "Destroy an opponent’s damaged ship.\nPlay: Immediately after the ship has been damaged in a Space Battle in which you are participating."
    )

    self.cards.create(
      name: "Dug In",
      text: "Choose a planet.  Your Ground Forces on that planet are immune to planetary bombardment this round.\nPlay: Immediately before bombardment."
    )

    self.cards.create(
      name: "Diplomatic Immunity",
      text: "Choose a system in which you have at least one spaceship.  Only you may activate the chosen system this turn.\nPlay: As an action."
    )

    self.cards.create(
      name: "Emergency Repairs",
      text: "Choose a system.  Immediately repair all of your Dreadnoughts and War Suns in the chosen system.\nPlay: At any time."
    )

    self.cards.create(
      name: "Emergency Repairs",
      text: "Choose a system.  Immediately repair all of your Dreadnoughts and War Suns in the chosen system.\nPlay: At any time."
    )

    self.cards.create(
      name: "Equipment Sabotage",
      text: "Destroy up to 2 PDS units on the planet of your choice.  Play: As an action."
    )

    self.cards.create(
      name: "Equipment Sabotage",
      text: "Destroy up to 2 PDS units on the planet of your choice.  Play: As an action."
    )

    self.cards.create(
      name: "Experimental Weaponry",
      text: "Until the end of the combat round, all hits from your Dreadnoughts and War Suns may not be applied to Fighters (unless there are no other ships present).\nPlay: Immediately before any round of combat."
    )

    self.cards.create(
      name: "Experimental Weaponry",
      text: "Until the end of the combat round, all hits from your Dreadnoughts and War Suns may not be applied to Fighters (unless there are no other ships present).\nPlay: Immediately before any round of combat."
    )

    self.cards.create(
      name: "Enhanced Armor",
      text: "Until the end of the round, your Cruisers gain the “sustain damage” ability.\nPlay: As an action."
    )

    self.cards.create(
      name: "Enhanced Armor",
      text: "Until the end of the round, your Cruisers gain the “sustain damage” ability.\nPlay: As an action."
    )

    self.cards.create(
      name: "Experimental Battlestation",
      text: "Choose one Space Dock.  That Space Dock can immediately fire three times at an enemy fleet in range as if the Space Dock were one of your PDS units.\nPlay: After an opponent has activated a system and moved any ships into the system."
    )

    self.cards.create(
      name: "Experimental Battlestation",
      text: "Place 2 Ground Forces on any one planet you control.\nPlay: As an action."
    )

    self.cards.create(
      name: "Flank Speed",
      text: "Choose a system you have just activated with a Command Counter.   Increase the movement of all ships moving to that system by 1.\nPlay: Immediately after activating a system with a Command Counter."
    )

    self.cards.create(
      name: "Flank Speed",
      text: "Choose a system you have just activated with a Command Counter.   Increase the movement of all ships moving to that system by 1.\nPlay: Immediately after activating a system with a Command Counter."
    )

    self.cards.create(
      name: "Flank Speed",
      text: "Choose a system you have just activated with a Command Counter.   Increase the movement of all ships moving to that system by 1.\nPlay: Immediately after activating a system with a Command Counter."
    )

    self.cards.create(
      name: "Flank Speed",
      text: "Choose a system you have just activated with a Command Counter.   Increase the movement of all ships moving to that system by 1.\nPlay: Immediately after activating a system with a Command Counter."
    )

    self.cards.create(
      name: "Friendly Fire",
      text: "If your opponent has more fighters than non-Fighter ships in this system, he must immediately lose half of his Fighters here (rounded down).\nPlay: Immediately before a Space Battle that you are participating in."
    )

    self.cards.create(
      name: "Friendly Fire",
      text: "If your opponent has more fighters than non-Fighter ships in this system, he must immediately lose half of his Fighters here (rounded down).\nPlay: Immediately before a Space Battle that you are participating in."
    )

    self.cards.create(
      name: "Friendly Fire",
      text: "If your opponent has more fighters than non-Fighter ships in this system, he must immediately lose half of his Fighters here (rounded down).\nPlay: Immediately before a Space Battle that you are participating in."
    )

    self.cards.create(
      name: "Friendly Fire",
      text: "If your opponent has more fighters than non-Fighter ships in this system, he must immediately lose half of his Fighters here (rounded down).\nPlay: Immediately before a Space Battle that you are participating in."
    )

    self.cards.create(
      name: "First Strike",
      text: "You may take your first action of the Action Phase before the player with the lowest initiative number.  Then resume order of play as normal.\nPlay: Immediately after the Strategy Phase."
    )

    self.cards.create(
      name: "First Strike",
      text: "You may take your first action of the Action Phase before the player with the lowest initiative number.  Then resume order of play as normal.\nPlay: Immediately after the Strategy Phase."
    )

    self.cards.create(
      name: "Flanking Tactic",
      text: "Your opponent may not retreat from the battle (regardless of Special Abilities or Action Cards that would allow a retreat).\nPlay: Immediately before a Space Battle in which you are participating."
    )

    self.cards.create(
      name: "Flanking Tactic",
      text: "Your opponent may not retreat from the battle (regardless of Special Abilities or Action Cards that would allow a retreat).\nPlay: Immediately before a Space Battle in which you are participating."
    )

    self.cards.create(
      name: "Focused Research",
      text: "Spend six resources to ignore one prerequisite Technology requirement in the tech tree.\nPlay: Immediately before purchasing a Technology that requires another single Technology that you do not possess."
    )

    self.cards.create(
      name: "Fantastic Rhetoric",
      text: "You gain 10 additional influence for one vote.\nPlay: Immediately before you vote on the resolution of a law or resolution."
    )

    self.cards.create(
      name: "Fighter Prototype",
      text: "Choose a system.  All of your fighters in that system receive +2 on all combat rolls for one combat round.\nPlay: Immediately before a Space Battle."
    )

    self.cards.create(
      name: "Flawless Strategy",
      text: "You may execute the primary ability of any Strategy Card not chosen during this Strategy Phase.  Each other player may then execute the card’s secondary ability as usual.\nPlay: As an action."
    )

    self.cards.create(
      name: "Ghost Ship",
      text: " Place a free Destroyer in any wormhole space that contains no enemy ships.\nPlay: As an action."
    )

    self.cards.create(
      name: "Good Year",
      text: "Receive one Trade Good for each planet you control outside your Home System.\nPlay: As an action."
    )

    self.cards.create(
      name: "Grand Armada",
      text: "There is no Fleet Supply limit for your ships in your Home System this round.  At the end of the Status Phase, you must remove any ships that exceed your normal Fleet Supply Limit.\nPlay: During the Strategy Phase."
    )

    self.cards.create(
      name: "In the Silence of Space",
      text: "Choose one of your fleets.  All ships in that fleet with a movement of 2 or more can pass through, but not stop in, a system occupied by enemy ships during this activation.\nPlay: Immediately after activating a system with a Command Counter."
    )

    self.cards.create(
      name: "In the Silence of Space",
      text: "Choose one of your fleets.  All ships in that fleet with a movement of 2 or more can pass through, but not stop in, a system occupied by enemy ships during this activation.\nPlay: Immediately after activating a system with a Command Counter."
    )

    self.cards.create(
      name: "In the Silence of Space",
      text: "Choose one of your fleets.  All ships in that fleet with a movement of 2 or more can pass through, but not stop in, a system occupied by enemy ships during this activation.\nPlay: Immediately after activating a system with a Command Counter."
    )

    self.cards.create(
      name: "Influence in the Merchants’ Guild",
      text: "Break on trade agreement in play.\nPlay: As an action"
    )

    self.cards.create(
      name: "Insubordination",
      text: "Remove one Command Counter from the Command Pool of one opponent.\nPlay: As an action."
    )

    self.cards.create(
      name: "Into the Breach",
      text: "Choose one Dreadnought.  All ships in the fleet containing that Dreadnought receive +1 on all combat rolls for the remainder of the battle.   The first two hits against your fleet must be applied to the chosen Dreadnought\nPlay: Immediately before any Space Battle begins."
    )

    self.cards.create(
      name: "Local Unrest",
      text: "Choose a planet in a non-Home system.  Exhaust that planet and destroy one Ground Force on it, if able.  If there are no Ground Forces left on the planet, it reverts to neutral status.\nPlay: As an action."
    )

    self.cards.create(
      name: "Local Unrest",
      text: "Choose a planet in a non-Home system.  Exhaust that planet and destroy one Ground Force on it, if able.  If there are no Ground Forces left on the planet, it reverts to neutral status.\nPlay: As an action."
    )

    self.cards.create(
      name: "Local Unrest",
      text: "Choose a planet in a non-Home system.  Exhaust that planet and destroy one Ground Force on it, if able.  If there are no Ground Forces left on the planet, it reverts to neutral status.\nPlay: As an action."
    )

    self.cards.create(
      name: "Local Unrest",
      text: "Choose a planet in a non-Home system.  Exhaust that planet and destroy one Ground Force on it, if able.  If there are no Ground Forces left on the planet, it reverts to neutral status.\nPlay: As an action."
    )

    self.cards.create(
      name: "Lucky Shot",
      text: "Destroy on enemy Dreadnought, Cruiser, or Destroyer currently in a system containing a planet under your control.\nPlay: As an action."
    )

    self.cards.create(
      name: "Morale Boost",
      text: "For one combat round (not an entire battle), all of your units receive +1 on all combat rolls.\nPlay: Immediately before any Space Battle or Invasion Combat round."
    )

    self.cards.create(
      name: "Morale Boost",
      text: "For one combat round (not an entire battle), all of your units receive +1 on all combat rolls.\nPlay: Immediately before any Space Battle or Invasion Combat round."
    )

    self.cards.create(
      name: "Morale Boost",
      text: "For one combat round (not an entire battle), all of your units receive +1 on all combat rolls.\nPlay: Immediately before any Space Battle or Invasion Combat round."
    )

    self.cards.create(
      name: "Morale Boost",
      text: "For one combat round (not an entire battle), all of your units receive +1 on all combat rolls.\nPlay: Immediately before any Space Battle or Invasion Combat round."
    )

    self.cards.create(
      name: "Morale Boost",
      text: "For one combat round (not an entire battle), all of your units receive +1 on all combat rolls.\nPlay: Immediately before any Space Battle or Invasion Combat round."
    )

    self.cards.create(
      name: "Military Foresight",
      text: "Place the destroyed ship on this card.  At the start of the next Status Phase, place this ship at any one of your Space Docks (for free) and discard this card.  If you do not have any Space Docks on the board during the Status Phase, the ship is discarded.\nPlay: After one of your ships is lost in a Space Battle."
    )

    self.cards.create(
      name: "Minelayers",
      text: "Choose a system containing one of your fleets.  Each of your Cruisers in the system inflicts one automatic hit before the first round of a Space Battle.\nPlay: Immediately after an enemy fleet enters the system."
    )

    self.cards.create(
      name: "Multiculturalism",
      text: "Choose one racial special ability possessed by one of your opponents.  You gain that special ability this round.\nPlay: During the Strategy Phase."
    )

    self.cards.create(
      name: "Massive Transport",
      text: "You may immediately move one of your existing Space Docks to another friendly planet.  A route that does not contain ships must exist between the two planets.\nPlay: As an action."
    )

    self.cards.create(
      name: "Patrol",
      text: "Move up to two Cruisers or Destroyers in an activated system to an empty, adjacent system or systems.  Then place Command Counters from your reinforcements in those systems.\nPlay: As an action."
    )

    self.cards.create(
      name: "Policy Paralysis",
      text: " Choose an opponent.  That opponent may not participate in the secondary ability of the currently active Strategy Card.\nPlay: Immediately after the primary ability of a Strategy Card is resolved."
    )

    self.cards.create(
      name: "Public Disgrace",
      text: "After a player has chosen a Strategy Card, play this card to force the player to return that Strategy Card and choose a different one.\nPlay: Immediately after a player has chosen a Strategy Card."
    )

    self.cards.create(
      name: "Productivity Spike",
      text: "Choose one of your Space Docks.  The production capacity of that Space Dock increases by a number equal to its planet’s influence this round.\nPlay: During the Strategy Phase."
    )

    self.cards.create(
      name: "Privateers",
      text: "Choose an opponent.  Take all Trade Goods from that opponent’s Trade Goods area.  Place half of them (round down) in your Trade Goods area and discard the rest.\nPlay: As an action."
    )

    self.cards.create(
      name: "Political Stability",
      text: "Keep your current Strategy Card instead of relinquishing it at the end of the game round.  You do not select a new Strategy Card during the Strategy Phase of the upcoming round.\nPlay: During the Strategy Phase."
    )

    self.cards.create(
      name: "Plague",
      text: "Choose a planet our opponent controls.  Roll a die for each Ground Force unit on that planet.  If the number rolled is even, that unit is destroyed.  Your opponent retains control of the planet even if all of his Ground Forces are destroyed.\nPlay: As an action."
    )

    self.cards.create(
      name: "Rare Mineral",
      text: "Receive three Trade Goods.  Play: Immediately after successfully invading a neutral planet."
    )

    self.cards.create(
      name: "Rare Mineral",
      text: "Receive three Trade Goods.  Play: Immediately after successfully invading a neutral planet."
    )

    self.cards.create(
      name: "Rare Mineral",
      text: "Receive three Trade Goods.  Play: Immediately after successfully invading a neutral planet."
    )

    self.cards.create(
      name: "Ruinous Tariffs",
      text: "Choose a player with whom you have a trade agreement.  That player must give you half of the Trade Goods in his Trade Goods area (round up).\nPlay: Immediately after the chosen player executes the Trade Strategy Card."
    )

    self.cards.create(
      name: "Ruinous Tariffs",
      text: "Choose a player with whom you have a trade agreement.  That player must give you half of the Trade Goods in his Trade Goods area (round up).\nPlay: Immediately after the chosen player executes the Trade Strategy Card."
    )

    self.cards.create(
      name: "Reparations",
      text: "Choose and exhaust a planet controlled by an opponent has just taken control of a planet from you.  Then choose and refresh one of your planets with an equal or lower resource value.\nPlay: Immediately after you lose control of a planet to an opponent."
    )

    self.cards.create(
      name: "Rise of a Messiah",
      text: "Receive one Ground Force unit on each planet that you control.\nPlay: As an action."
    )

    self.cards.create(
      name: "Rule of Terror",
      text: "If you have a War Sun or 2 Dreadnoughts present, then your opponent must either immediately retreat (if able) or immediately take 2 casualties.\nPlay: Immediately before a Space Battle in which you are participating."
    )

    self.cards.create(
      name: "Rally of the People",
      text: "Receive one Dreadnought in your Home System.\nPlay: As an action."
    )

    self.cards.create(
      name: "Signal Jamming",
      text: "Choose a non-Home system.  Take a Command Counter from any other player’s reinforcements and place it on the chosen system.\nPlay: During the Strategy Phase."
    )

    self.cards.create(
      name: "Signal Jamming",
      text: "Choose a non-Home system.  Take a Command Counter from any other player’s reinforcements and place it on the chosen system.\nPlay: During the Strategy Phase."
    )

    self.cards.create(
      name: "Signal Jamming",
      text: "Choose a non-Home system.  Take a Command Counter from any other player’s reinforcements and place it on the chosen system.\nPlay: During the Strategy Phase."
    )

    self.cards.create(
      name: "Signal Jamming",
      text: "Choose a non-Home system.  Take a Command Counter from any other player’s reinforcements and place it on the chosen system.\nPlay: During the Strategy Phase."
    )

    self.cards.create(
      name: "Skilled Retreat",
      text: "Choose one of your fleets that is participating in a Space Battle.  Place a Command Counter from your reinforcements in a friendly or empty unactivated system adjacent to that fleet.  Move the chosen fleet into that system.\nPlay: Before any round of a Space Battle."
    )

    self.cards.create(
      name: "Skilled Retreat",
      text: "Choose one of your fleets that is participating in a Space Battle.  Place a Command Counter from your reinforcements in a friendly or empty unactivated system adjacent to that fleet.  Move the chosen fleet into that system.\nPlay: Before any round of a Space Battle."
    )

    self.cards.create(
      name: "Skilled Retreat",
      text: "Choose one of your fleets that is participating in a Space Battle.  Place a Command Counter from your reinforcements in a friendly or empty unactivated system adjacent to that fleet.  Move the chosen fleet into that system.\nPlay: Before any round of a Space Battle."
    )

    self.cards.create(
      name: "Skilled Retreat",
      text: "Choose one of your fleets that is participating in a Space Battle.  Place a Command Counter from your reinforcements in a friendly or empty unactivated system adjacent to that fleet.  Move the chosen fleet into that system.\nPlay: Before any round of a Space Battle."
    )

    self.cards.create(
      name: "Strategic Planning",
      text: "You do not have to pay Command Counters from your Strategy Allocation area in order to execute the secondary ability of Strategy Cards for the remainder of the game round.\nPlay: During the Strategy Phase."
    )

    self.cards.create(
      name: "Strategic Planning",
      text: "You do not have to pay Command Counters from your Strategy Allocation area in order to execute the secondary ability of Strategy Cards for the remainder of the game round.\nPlay: During the Strategy Phase."
    )

    self.cards.create(
      name: "Star of Death",
      text: "Choose a planet in a system containing one of your War Suns.  Destroy all Ground Forces, PDS units, and Space Docks on that planet, then place a radiation Domain Counter on the planet.  The planet reverts to neutral status.\nPlay: Immediately before the Planetary Landing segment of the tactical action sequence."
    )

    self.cards.create(
      name: "Spacedock Accident",
      text: "Choose a Space Dock in a non-Home system.  The owner of the Space Dock may not build units at the chosen Space Dock this round."
    )

    self.cards.create(
      name: "Stellar Criminals",
      text: "Choose an opponent.  That opponent must choose and exhaust half of his unexhausted planets (round down).\nPlay: As an action."
    )

    self.cards.create(
      name: "Strategic Shift",
      text: "Choose one Strategy Card.  No player may choose that Strategy Card this round.\nPlay: During the Strategy Phase, before the first player chooses a Strategy Card."
    )  

    self.cards.create(
      name: "Secret Industrial Agent",
      text: "Destroy one Space Dock that is not in a Home System.\nPlay: As an action."
    )

    self.cards.create(
      name: "Strategic Bombardment",
      text: "Play only if you have a War Sun in a system containing one or more planets controlled by an opponent.  Exhaust those planets.  Then roll a die.  On a result of 1-5, discard this card as normal.  On a result of 6+, return this card to your hand.\nPlay: As an action."
    )

    self.cards.create(
      name: "Surprise Assault",
      text: "Immediately after (optionally) moving ships into the system, you may build at your blockaded Space Dock(s).  A Space Battle is then initiated.\nPlay: After activating a system containing one of your blockaded Space Docks."
    )

    self.cards.create(
      name: "Strategic Flexibility",
      text: "Play this card to return the Strategy Card you have chosen and replace it with one of the remaining Strategy Cards.\nPlay: During the Strategy Phase after all players have chosen their Strategy Cards, but before Bonus Counters have been placed on the unchosen Strategy Cards."
    )

    self.cards.create(
      name: "Shields Holding",
      text: "Cancel up to two hits during one round of a Space Battle in which you participate.\nPlay: Immediately after your opponent has rolled all combat dice and before you have removed casualties."
    )

    self.cards.create(
      name: "Scientist Assassination",
      text: "Choose a player.  That player cannot acquire or purchase Technology this turn.\nPlay: During the Strategy Phase."
    )

    self.cards.create(
      name: "Target Their Flagship!",
      text: "Choose one of your ships and target one opposing ship.  Roll 1 die.  If the roll is equal to or greater than your ship’s combat value, the target ship is immediately hit (and does not receive return fire).  Your ship does not roll during the first round of combat.\nPlay: Immediately before a Space Battle."
    )

    self.cards.create(
      name: "Target Their Flagship!",
      text: "Choose one of your ships and target one opposing ship.  Roll 1 die.  If the roll is equal to or greater than your ship’s combat value, the target ship is immediately hit (and does not receive return fire).  Your ship does not roll during the first round of combat.\nPlay: Immediately before a Space Battle."
    )

    self.cards.create(
      name: "Tech Bubble",
      text: "Play only if you chose the Technology Strategy this round.  After executing the primary ability of the Technology Strategy, you may spend one Command Counter from your Strategy Allocation to also execute the secondary ability this round.  You must pay the normal cost for the Technology you purchase using this card.\nPlay:  Immediately after executing the primary ability of the Technology Strategy."
    )

    self.cards.create(
      name: "Touch of Genius",
      text: "Spend three influence to duplicate the effects of any other Action Card in the discard pile.\nPlay: At the time specified by the card being duplicated."
    )

    self.cards.create(
      name: "Transport",
      text: "Choose a planet you control.  You may move up to three Ground Forces from the chosen planet to another planet you control.  A route that does not contain ships must exist between these two planets.\nPlay: as an action."
    )  

    self.cards.create(
      name: "Temporary Stability",
      text: "Players may not play any Action Cards until the next Status Phase.  Any player may discard 3 Action Cards from his hand at any time to cancel this card.\nPlay: During the Strategy Phase before any players have chosen their Strategy Cards."
    ) 

    self.cards.create(
      name: "Thugs",
      text: "Choose a player.  That player may not participate in the vote on a law or resolution for the remainder of this round.\nPlay: Before the first vote (with influence) is cast."
    )  

    self.cards.create(
      name: "Trade Stop",
      text: "Break all trade agreements in play, including your own.\nPlay: During the Strategy Phase."
    )  

    self.cards.create(
      name: "Usurper",
      text: "Play only if you control Mecatol Rex. Place this card on the Mecatol Rex system.  While this card is in play, you gain votes equal to twice the influence value of Mecatol Rex (instead of its normal influence value) even if it is exhausted.  Discard this card from play if you lose control of Mecatol Rex.\nPlay: During the Strategy Phase."
    )  

    self.cards.create(
      name: "Unexpected Action",
      text: "Remove one of your Command Counters from the board and place it with your reinforcements.\nPlay: As an action."
    )  

    self.cards.create(
      name: "Uprising",
      text: "Choose one non-Home system.  Exhaust each planet in that system, if able.\nPlay: As an action."
    )  

    self.cards.create(
      name: "Voluntary Annexation",
      text: "Choose any neutral panet in a system adjacent to a system containing a planet you control.  Place three free Ground Forces there.  You now control this planet.\nPlay: As an action."
    )

    self.cards.create(
      name: "War Footing",
      text: "Choose one system.  Your Fleet Supply limit in that system is increased by two for the rest of this game round.  At the end of the Status Phase, you must remove any ships that exceed your normal Fleet Supply limit.\nPlay: As an action."
    )
  end
end