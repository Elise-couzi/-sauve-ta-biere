class AddAmountToOrderBeers < ActiveRecord::Migration[6.0]
  def change
    add_monetize :order_beers, :amount, currency: { present: false }
  end
end
