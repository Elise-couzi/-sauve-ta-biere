class BarBeersController < ApplicationController
  before_action :set_bar_beer, only: [:edit, :update, :destroy]

  def index
    @bar = Bar.find(params[:bar_id])

    @bar_beers = policy_scope(BarBeer).where(bar:@bar).includes(:beer)
    
  end

  def new
    @bars = Bar.find(params[:bar_id])
    @bar_beer = Barbeer.new
  end

  def create
    @user = current_user
    @bar = Bar.find(params[:bar_id])
    @bar_beer = BarBeer.new(bar_beer_params)
    @bar_beer.user = @user
    @bar_beer.bar = @bar

    if @bar_beer.save
      redirect_to bar_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @bar_beer.update(bar_beer_params)
    redirect_to bar_path(@bar_beer)
  end

  def destroy
    @bar_beer.destroy
    redirect_to bar_path
  end

  private

  def set_bar_beer
    @bar_beer = BarBeer.new(params[:id])
  end

  def bar_beer_params
    params.require(:bar_beer).permit(:quantity, :selling_price)
  end
end
