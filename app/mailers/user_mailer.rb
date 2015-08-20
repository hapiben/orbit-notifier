class UserMailer < ActionMailer::Base
  default from: 'hello@findings.co'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.send_confirmation.subject
  #
  def email_alert(user, exchange_rate)
    @user = user
    @exchange_rate = exchange_rate

    mail to: user.email,
         subject: "#{t('mailer.alert')} - PHP/NZD #{exchange_rate.exchange_rate}"
  end
end
