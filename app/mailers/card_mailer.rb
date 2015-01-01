class CardMailer < ActionMailer::Base
  default from: "from@example.com"

  def deal_card_email(player, game, card)
    @user = player.user
    @card = card
    url = url_for :controller => 'players', :action => 'show', :game_id => game.id, :id => player.id
    @link = ActionController::Base.helpers.link_to "click here", url

    mail(to: @user.email, subject: 'New Action Card')
  end

  def deal_public_objective_email(game, player, public_objectives)
    @objectives = []
    public_objectives.each do |objective|
      url = url_for :controller => 'objective_cards', :action => 'mark_card_as_revealed', :game_id => game.id, objective_card_id: objective.id
      link = ActionController::Base.helpers.link_to "reveal objective", url
      @objectives << { card: objective, link: link }
    end

    mail(to: player.email, subject: 'New Public Objectives')
  end
end
