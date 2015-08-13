class UserMailer < ActionMailer::Base
  default from: 'hello@findings.co'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.send_confirmation.subject
  #
  def email_alert(user, exchange_rate)
    @user = user

    mail to: user.email,
         subject: t('mails.user.confirmation')
  end
end
