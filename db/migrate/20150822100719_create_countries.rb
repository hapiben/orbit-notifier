class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :country_code
      t.string :currency_name
      t.string :currency_code

      t.timestamps null: false
    end
  end
end
