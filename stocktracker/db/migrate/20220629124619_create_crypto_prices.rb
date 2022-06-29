class CreateCryptoPrices < ActiveRecord::Migration[6.1]
  def change
    create_table :crypto_prices do |t|
      t.decimal :price
      t.references :cryptocurrency, null: false, foreign_key: true
      t.date :captured_at

      t.timestamps
    end
  end
end
