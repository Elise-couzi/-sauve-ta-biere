class StripeCheckoutSessionService
  def call(event)
    order = Order.find_by(checkout_session_id: event.data.object.id)
    order.update(state: 'paid', paid_at: DateTime.now)
    @order_beers = order.order_beers
    @order_beers.each do |order_beer|
      order_beer.bar_beer.update(quantity: order_beer.bar_beer.quantity - order_beer.quantity)
    end
  end
end
