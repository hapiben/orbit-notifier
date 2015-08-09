class CreateExchangeRates < ActiveRecord::Migration
  def change
    create_table :exchange_rates do |t|
      t.string :country_code
      t.string :currency_name
      t.string :currency_code
      t.string :exchange_rate

      t.timestamps null: false
    end
  end
end
