class CreateOrderBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :order_beers do |t|
      t.integer :quantity
      t.integer :buying_price
      t.references :order, null: false, foreign_key: true
      t.references :bar_beer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
