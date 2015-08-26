class Origin < ActiveRecord::Base
  PROTOCOL = 'https://'
  RATES_API = 'secure.orbitremit.com/api/rates.json'
  PARAMS = 'static=true'

  has_many :exchanges
  has_many :countries, through: :exchanges

  def get_latest_rates
    response = RestClient.get "#{PROTOCOL}#{RATES_API}?#{PARAMS}&country=#{country_code}"
    data = JSON.parse(response.body)

    data['exchangeRates'].each do |rate|
      country = self.countries.find_or_create_by({
        country_code: rate['countryCode'],
        currency_name: rate['currencyName'],
        currency_code: rate['currencyCode']
      })

      puts "--------------------------------------------"
      puts rate['exchangeRate'].to_f

      rate = country.rates.find_or_create_by({
        rate_cents: rate['exchangeRate'].to_f
      })
    end
  end
end
