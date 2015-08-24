class Origin < ActiveRecord::Base
  PROTOCOL = 'https://'
  RATES_API = 'secure.orbitremit.com/api/rates.json'
  PARAMS = 'static=true'

  has_many :exchanges
  has_many :countries, through: :exchanges


  # def get_latest_rates
  #   response = RestClient.get "#{PROTOCOL}#{RATES_API}?#{PARAMS}&country=#{country_code}"
  #   data = JSON.parse(response.body)

  #   # Create exchange rate data
  #   data['exchangeRates'].each do |rate|
      
  #   end    
  # end
end
