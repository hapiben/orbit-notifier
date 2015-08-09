require 'rails_helper'

RSpec.describe ExchangeRate, type: :model do
  let!(:exchange_rate_ph) { create(:exchange_rate_ph) }
  let!(:exchange_rate_us) { create(:exchange_rate_us) }

  describe '.get_latest_rate_by_country_code' do
    it 'returns exchange rate' do
      expect(ExchangeRate.get_latest_rate_by_country_code('ph')).to eq exchange_rate_ph
    end
  end
end