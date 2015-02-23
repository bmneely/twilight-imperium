module BaseStrategyCards
  extend ActiveSupport::Concern

  def generate_strategy_cards
    self.strategy_cards.create(
      name: "Leadership",
      primary: "Receive 3 Command Counters from your reinforcements. You may then use this card’s secondary ability.",
      secondary: "You may spend influence to purchase up to 3 command counters. 1 Command counter costs 2 influence.",
      order: 1
    )

    self.strategy_cards.create(
      name: "Diplomacy",
      primary: "Choose A or B:
      \nA. Make each opponent place one command counter into a system that you control a planet in.
      \nB. Execute the secondary ability of this card without paying a command counter or any influence.",
      secondary: "Spend 1 Command Counter from your strategy allocation and 3 influence to claim an empty planet adjacent to a system you control.",
      order: 2
    )

    self.strategy_cards.create(
      name: "Assembly",
      primary: "Draw 2 AC. When you activate Assembly, you can choose either A or B:
      \nA. Take the speaker token, choose another player to make a policy or law.
      \nB. Give the speaker token to another player, create a policy or law.",
      secondary: "Spend one Command Counter from your strategy allocation to refresh any number of your planets with a combined resource/influence of 6 or less.",
      order: 3
    )

    self.strategy_cards.create(
      name: "Production",
      primary: "Build in one of your systems with a space dock, receiving 2 free resources. This does not activate the planet, and you can build even if the planet is already activated.",
      secondary: "Spend 1 CC from your strategy allocation area to move up to two of your ships from unactivated systems into any adjacent systems you control. This does not activate the destination system(s).",
      order: 4
    )

    self.strategy_cards.create(
      name: "Leadership",
      primary: "Receive 3 TG or cancel up to 2 trade agreements. Then all players receive TG from their trade agreements. Other players receive 1 fewer total TG. Finally, open trade negotiations among all players. You must approve all new trade agreements.",
      secondary: "",
      order: 5
    )

    self.strategy_cards.create(
      name: "Warfare",
      primary: "Place the high alert token in a system. Your ships in the system with the token gain +1 movement and+1 on all combat rolls. If you move any ships from this system, you may move the token with them.",
      secondary: "Spend 1 CC from your strategy allocation area to move up to two of your ships from unactivated systems into any adjacent systems you control. This does not activate the destination system(s).",
      order: 6
    )

    self.strategy_cards.create(
      name: "Technology",
      primary: "Receive 1 tech advance. You may then buy a second tech for 8 resources.",
      secondary: "Spend 1 CC from your strategy allocation area and 6 resources to receive 1 tech.",
      order: 7
    )

    self.strategy_cards.create(
      name: "Bureaucracy",
      primary: "Place 1 CC from your reserves onto your race card. Draw 2 random Public Objectives.  For the first 6 times, these will be from the Stage 1 Pile.  For the last 4 times, these will be from the Stage 2 pile.  Next, pick one objective to reveal.  Reveal that objective and claim it immediately, if able.  Shuffle the card not chosen back into the pile it came from.",
      secondary: "Spend 1 CC from your strategy allocation area to draw 2  AC.",
      order: 8
    )
  end
end
