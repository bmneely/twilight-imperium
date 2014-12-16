class CardMailer < ActionMailer::Base
  default from: "from@example.com"

  def deal_card_email(player, game, card)
    @user = player.user
    @card = card
    @url = url_for :controller => 'players', :action => 'show', :game_id => game.id, :id => player.id


    mail(to: @user.email, subject: 'New Action Card')
  end
end
