class BarBeersController < ApplicationController
  before_action :set_bar_beer, only: [:edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @bar = Bar.find(params[:bar_id])

    @bar_beers = policy_scope(BarBeer).where(bar:@bar).includes(:beer)
    @order = policy_scope(Order).find_by(user_id: current_user)
  end

  def new
    @bar = Bar.find(params[:bar_id])
    @bar_beer = BarBeer.new
    authorize @bar_beer
  end

  def create
    @user = current_user
    @bar = Bar.find(params[:bar_id])
    @beer = Beer.find_by(name: params[:beer_name])
    if @beer
      @bar_beer = BarBeer.new(bar_beer_params)
      @bar_beer.beer = @beer
      @bar_beer.bar = @bar
      if @bar_beer.save!
        redirect_to dashboard_path
      else
        render :new
      end
    end
    authorize @bar_beer
  end

  def edit
    authorize @bar_beer
  end

  def update
    @bar_beer.update(bar_beer_params)
    redirect_to dashboard_path
    authorize @bar_beer
  end

  def destroy
    @bar_beer.destroy
    redirect_to dashboard_path
    authorize @bar_beer
  end

  private

  def set_bar_beer
    @bar_beer = BarBeer.find(params[:id])
  end

  def bar_beer_params
    params.require(:bar_beer).permit(:quantity, :selling_price)
  end
end
