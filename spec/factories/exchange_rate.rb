# encoding: UTF-8
require 'factory_girl'

FactoryGirl.define do
  factory :exchange_rate_ph, class: ExchangeRate do
    country_code    'ph'
    currency_name   'Philippines'
    currency_code   'PHP'
    exchange_rate   '3.0'
  end

  factory :exchange_rate_us, class: ExchangeRate do
    country_code    'us'
    currency_name   'United States'
    currency_code   'USD'
    exchange_rate   '1.0'
  end
end