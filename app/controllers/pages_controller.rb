class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :pro, :profil]

  def home
  end

  def profil
    @orders = Order.where(user_id: current_user)
    @state = {"pending" => "en attente", "paid" => "payée"}
  end
end
