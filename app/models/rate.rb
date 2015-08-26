class Rate < ActiveRecord::Base

  belongs_to :countries

  monetize :rate_cents, allow_nil: false, numericality: {
    greater_than_or_equal_to: 0
  }
end



# # This assumes that you are converting from NZD dollars.
# class ExchangeRate < ActiveRecord::Base
#   def self.prev(id, currency_code)
#     where('id < ? AND currency_code = ?', id, currency_code).first
#   end

#   def self.get_latest_rate_by_country_code(country_code)
#     self.where(country_code: country_code).last
#   end

#   def self.get_latest_rates
#     data = get

#     # Create exchange rate data
#     data['exchangeRates'].each do |rate|
#       # self.find_or_create_by!({
#       #   country_code: rate['countryCode'],
#       #   currency_name: rate['currencyName'],
#       #   currency_code: rate['currencyCode'],
#       #   exchange_rate: rate['exchangeRate']
#       # })
#     end          
#   end
# end

