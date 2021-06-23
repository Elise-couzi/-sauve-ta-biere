class BarsController < ApplicationController
  before_action :set_bar, only: [:show, :edit]

  def index
    @bars = Bar.all
  end

  def show; end

  def edit; end

  def update
    @bar.update(bar_params)
    redirect_to bar_path(@bar)
    # authorize @bar
  end

  private

  def set_bar
    @bar = Bar.find(params[:id])
    # authorize @bar
  end

  def bar_params
    params.require(:bar).permit(:name, :address, :user)
  end
end
