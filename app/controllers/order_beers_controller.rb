class OrderBeersController < ApplicationController
  before_action :set_order_beer, only: [:add_quantity, :remove_quantity, :destroy]

  def create
    # NEW
    # recup la beer (id)
    # recup la quantity par la modal (params : beer_id quantity)
    # creer le order_beer avec ces 2 infos (params)
    @order_beer = policy_scope(OrderBeer).find_by(id: params[:id])
    authorize @order_beer
    @order_beer = BarBeer.new(params[:beer_id, :quantity])
  end

  def add_quantity
    @order_beer.quantity += 1
    authorize @order_beer
    @order_beer.save
    redirect_to orders_path
  end

  def remove_quantity
    @order_beer.quantity -= 1
    authorize @order_beer
    @order_beer.save
    redirect_to orders_path
  end

  def destroy
    @order_beers.destroy
    authorize @order_beer
    redirect_to orders_path
  end

  private

  def set_order_beer
    @order_beer = OrderBeer.find(params[:id])
  end
end
