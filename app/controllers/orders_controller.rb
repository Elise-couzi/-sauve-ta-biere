class OrdersController < ApplicationController

  def panier
    @user = current_user
    @order = policy_scope(Order).find_by(user_id: current_user)
    authorize @order
    # @order = Order.find(params[:order_beer_id])
    # depuis son panier
    # le current_user peut ajouter ou supprimer une beer (order_beer)
    # => + ou - ou supprimer
    #  màj du panier (order)
    # le current_user clique sur paiement pour procéder au paiement
    # recup l'order du current_user (particulier) => state / paid_at
    # @order = Order.current_user
  end

  def checkout_session
    @order = current_user.orders.find_by(state: 'pending')
    @order_beers = @order.order_beers

    session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
      name: @order.id,
      amount: @order.amount_total,
      currency: 'eur',
      quantity: 1
    }],
    success_url: orders_url(@order),
    cancel_url: orders_url(@order)
  )

  order.update(checkout_session_id: session.id)
  redirect_to new_order_payment_path(@order)
  end

end
