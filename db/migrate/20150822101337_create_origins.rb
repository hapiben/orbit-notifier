class CreateOrigins < ActiveRecord::Migration
  def change
    create_table :origins do |t|
      t.string :name
      t.string :country_code
      t.string :currency_name
      t.string :currency_code

      t.timestamps null: false
    end
  end
end
