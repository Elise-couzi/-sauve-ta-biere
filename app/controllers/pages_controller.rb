class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  skip_before_action :verify_authenticity_token, only: :beer_exist

  def home
  end

  def beer_exist
    @beer = Beer.find(params[:beers])
    # if @beer
    raise
  end
end
