class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :pro, :profil]

  def home
    @order = policy_scope(Order).find_by(user_id: current_user)
  end

  def profil
    @orders = Order.where(user_id: current_user)
    @state = {"pending" => "en attente", "paid" => "payée"}
    @current_order = policy_scope(Order).find_by(user_id: current_user, state: "pending")
  end

  def pro
    @order = policy_scope(Order).find_by(user_id: current_user)
    @user = current_user
  end
end
