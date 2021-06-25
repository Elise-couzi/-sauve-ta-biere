class BarsController < ApplicationController
  before_action :set_bar, only: [:show, :edit]
  skip_before_action :authenticate_user!, only: [:home, :index]

  def index
    @bars = policy_scope(Bar).all

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
