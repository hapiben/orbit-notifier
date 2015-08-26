class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges do |t|
      t.integer :origin_id
      t.integer :country_id

      t.timestamps null: false
    end
  end
end
