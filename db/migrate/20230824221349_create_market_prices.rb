class CreateMarketPrices < ActiveRecord::Migration[7.0]
  def change
    create_table :market_prices do |t|
      t.datetime :date
      t.float :price

      t.timestamps
    end
  end
end
