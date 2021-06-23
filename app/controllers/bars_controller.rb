class BarsController < ApplicationController
  before_action :set_bar, only: [:show, :edit]

  def show; end

  def new
    @bar = Bar.new
  end

  def create
    @bar = Bar.new(bar_params)

    if @bar.save
      redirect_to bar_path(@bar)
    else
      render :new
    end
  end

  def edit; end

  def update
    @bar.update(bar_params)
    redirect_to bar_path(@bar)
  end

  private

  def set_bar
    @bar = Bar.find(params[:id])
  end

  def bar_params
    params.require(:bar).permit(:name, :address, :user)
  end
end
