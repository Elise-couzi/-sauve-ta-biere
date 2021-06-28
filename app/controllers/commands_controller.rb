class CommandsController < ApplicationController
  def index
    @user = current_user
    @bar = @user.bar
    @bar_beers = policy_scope(BarBeer).where(bar: @bar).includes(:beer)
    @order_beers = OrderBeer.where(bar_beer_id: @bar_beers)
    list_id =[]
    @order_beers.each do |order_beer|
    list_id << order_beer.order_id
    end
    @orders = Order.where(id: list_id)
  end

end
# recup le bar de l'utilisateur actuel => bar.find_by(params[:bar_id])
# @bar = current_bar ??
# @bar = user.bar
# Bar.find_by(current_bar)

# partir de order_beer vers les bar_beers (du bar actuel)
# Bar.order_beer.bar.beers
# comparer le bar de l'utilisateur actuel à celui recup dans order_beer
# afficher les order_beers qui correspondent au bar de l'utilisateur actuel
# utiliser => .includes()

# recuperer les order_beers asccociées au bar_beers
# remonter et recup les orders associées au order_beers

# bar has_many order_beers through bar_beers
# penser à faire les association avec la table de jointure bar_beers