class OrdersController < ApplicationController

  def panier
    @order = policy_scope(Order).find_by(user_id: current_user)
    if @order.nil?
      @order = Order.create!(user: current_user, state: "pending", paid_at: DateTime.now)
    end
    @user = current_user
    authorize @order
    # @order = Order.find(params[:order_beer_id])
    # depuis son panier
    # le current_user peut ajouter ou supprimer une beer (order_beer)
    # => + ou - ou supprimer
    #  màj du panier (order)
    # le current_user clique sur paiement pour procéder au paiement
    # recup l'order du current_user (particulier) => state / paid_at
    # @order = Order.current_user
    # @order.order_beers.map { |ob| ob.quantity * ob.amount_cents }.reduce(:+)

  if  @order.order_beers.count > 0
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: "Commande nº#{@order.id}",
        images: [@order.photo_url],
        amount: @order.order_beers.map { |ob| ob.quantity * ob.amount_cents }.reduce(:+),
        currency: 'eur',
        quantity: 1
      }],
      # rediriger vers le profil / Page de confirmation
      success_url: profil_url,
      cancel_url: orders_url(@order)
      )
    @order.update!(checkout_session_id: session.id)
  end

  end
  # Not used anymore
  # def checkout_session
  #   @order = current_user.orders.find_by(state: 'pending')
  #   @order_beers = @order.order_beers
  # end
end
