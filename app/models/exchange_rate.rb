
# This assumes that you are converting from NZD dollars.
class ExchangeRate < ActiveRecord::Base
  GLOBAL_ORBITREMIT_NZPH_URL = 'https://secure.orbitremit.com/api/rates.json?static=true&country=nz'

  def self.get_latest_rate_by_country_code(country_code)
    self.where(country_code: country_code).last
  end

  def self.get_latest_rates
    response = RestClient.get GLOBAL_ORBITREMIT_NZPH_URL
    data = JSON.parse(response.body)
    
    # Create exchange rate data
    data['exchangeRates'].each do |rate|
      self.find_or_create_by!({
        country_code: rate['countryCode'],
        currency_name: rate['currencyName'],
        currency_code: rate['currencyCode'],
        exchange_rate: rate['exchangeRate']
      })
    end    
  end
end
