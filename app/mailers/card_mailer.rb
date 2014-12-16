class CardMailer < ActionMailer::Base
  default from: "from@example.com"

  def deal_card_email(user, card)
    @user = user
    @card = card
    @url = "foobar.com"
    mail(to: @user.email, subject: 'New Action Card')
  end
end
