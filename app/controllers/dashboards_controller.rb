class DashboardsController < ApplicationController
    before_action :set_bar_beer, only: [:edit, :update, :destroy]
  def index
    @user = current_user
    @bars = Bar.all
    @bar_beers = policy_scope(BarBeer).where(bar: @bar).includes(:beer)
  end
#   def index
#     @bar = Bar.find(params[:bar_id])
#     @bar_beers = policy_scope(BarBeer).where(bar:@bar).includes(:beer)
#   end
end
