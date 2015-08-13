class User < ActiveRecord::Base

  def email_alert(exchange_rate)
    UserMailer.email_alert(self, exchange_rate).deliver
  end
end
