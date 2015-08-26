class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :rate_cents
      t.belongs_to :country, index: true

      t.timestamps null: false
    end
  end
end
