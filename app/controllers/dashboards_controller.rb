class DashboardsController < ApplicationController
  before_action :set_bar_beer, only: [:edit, :update, :destroy]

  def index
    @user = current_user
    @bar = @user.bar
    @bar_beers = policy_scope(BarBeer).where(bar: @bar).includes(:beer)
    @order = policy_scope(Order).find_by(user_id: current_user)

    # historique
    @order_beers = OrderBeer.where(bar_beer_id: @bar_beers)
    list_id =[]
    @order_beers.each do |order_beer|
      list_id << order_beer.order_id
    end
    @orders_history = Order.where(id: list_id).where.not(state: "pending")
  end


#   def index
#     @bar = Bar.find(params[:bar_id])
#     @bar_beers = policy_scope(BarBeer).where(bar:@bar).includes(:beer)
#   end
end
