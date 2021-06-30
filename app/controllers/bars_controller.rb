class BarsController < ApplicationController
  before_action :set_bar, only: [:show, :edit]
  skip_before_action :authenticate_user!, only: [:home, :index]

  def index
    @bars = policy_scope(Bar).all
    # MAP
    @filters_bars = @bars.select { |bar| bar.bar_beers.size > 0 }
    
    @markers = Bar.joins(:bar_beers).geocoded.map do |bar|
      {
        lat: bar.latitude,
        lng: bar.longitude,
        info_window: render_to_string(partial: "info_window", locals: { bar: bar }),
        image_url: helpers.asset_url('https://res.cloudinary.com/dduubmloj/image/upload/v1625071219/noun_map_orange_yo5jhg.svg')
      }
    end
  end

  def show; end

  def edit; end

  def update
    @bar = Bar.find(params[:id])
    @bar.update(bar_params)
    redirect_to dashboard_path
    authorize @bar
  end

  private

  def set_bar
    @bar = Bar.find(params[:id])
    authorize @bar
  end

  def bar_params
    params.require(:bar).permit(:name, :address, :user)
  end
end
