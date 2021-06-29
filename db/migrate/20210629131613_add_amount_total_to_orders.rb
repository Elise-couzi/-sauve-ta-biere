class AddAmountTotalToOrders < ActiveRecord::Migration[6.0]
  def change
    add_monetize :orders, :amount_total, currency: { present: false }
  end
end
