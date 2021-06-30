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
end
