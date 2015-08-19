class User < ActiveRecord::Base

  def email_alert(exchange_rate)
    exchange_rate = ExchangeRate.get_latest_rate_by_country_code(exchange_rate)
    UserMailer.email_alert(self, exchange_rate).deliver_now
  end
end