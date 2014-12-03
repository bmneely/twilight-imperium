module BaseDeck
  extend ActiveSupport::Concern

  def build_base_deck

    card = self.cards.create(
      name: "Armistice",
      text: "Select an opponent and the planet, which is under your control.
             This player can not incursions on the selected planet in this
             round. \nPlay. As action."
    )

  end
end