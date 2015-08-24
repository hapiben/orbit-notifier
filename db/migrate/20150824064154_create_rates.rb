class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :rate
      t.integer :country_id

      t.timestamps null: false
    end
  end
end
