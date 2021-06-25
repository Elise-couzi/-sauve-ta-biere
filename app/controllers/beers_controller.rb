class BeersController < ApplicationController
  def new
    @beer = Beer.new
    authorize @beer
  end

  def create
    @beer = Beer.new(beer_params)
    # @beer.user = current_user
    if @beer.save
      redirect_to beer_path(@beer)
    else
      render :new
    end
    authorize @beer
  end

  def beer_params
    params.require(:beer).permit(:name, :alcohol_degree, :category, :description)
  end
end
