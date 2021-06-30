class OrderBeersController < ApplicationController
  before_action :set_order_beer, only: [:add_quantity, :remove_quantity, :destroy]

  def create
    # NEW
    # recup la beer (id)
    # recup la quantity par la modal (params : beer_id quantity)
    # creer le order_beer avec ces 2 infos (params
    @order = Order.find_by(user:current_user,state:"cart")
    if @order.nil?
      @order = Order.create!(user: current_user, state: "cart")
    end
    @order_beer = OrderBeer.new(order_beer_params)
    @order_beer.order = @order
    @bar_beer = BarBeer.find(params[:bar_beer_id])
    @order_beer.bar_beer = @bar_beer
    authorize @order_beer
    @order_beer.save
    redirect_to bar_bar_beers_path(@bar_beer.bar)
  end

  def add_quantity
    # if @order_beer.quantity >= bar_beer.quantity
    @order_beer.quantity += 1
    authorize @order_beer
    @order_beer.save
    redirect_to orders_path
  end

  def remove_quantity
    # if @order_beer.quantity < @bar_beer.quantity
    @order_beer.quantity -= 1
    authorize @order_beer
    @order_beer.save
    redirect_to orders_path
  end

  def destroy
    @order_beer.destroy
    authorize @order_beer
    redirect_to orders_path
  end

  private

  def set_order_beer
    @order_beer = OrderBeer.find(params[:id])
  end

  def order_beer_params
  params.require(:order_beer).permit(:quantity, :buying_price, :amount_cents)
  end
end
