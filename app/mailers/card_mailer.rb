class CardMailer < ActionMailer::Base
  default from: "from@example.com"

  def deal_card_email(player, game, card)
    @user = player.user
    @card = card
    @url = url_for :controller => 'players', :action => 'show', :game_id => game.id, :id => player.id


    mail(to: @user.email, subject: 'New Action Card')
  end

  def deal_public_objective_email(game, public_objective)
    @objective = public_objective
    game.users.each do |user|
      mail(to: user.email, subject: 'New Public Objective Reveal')
    end
  end
end
