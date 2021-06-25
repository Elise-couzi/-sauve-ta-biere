class CommandsController < ApplicationController

  def index
    @bar_beers = policy_scope(BarBeer).where(bar: @bar).includes(:beer)
    
  end

end
# recup le bar de l'utilisateur actuel => bar.find_by()
# remonter vers les bar_beers (du bar actuel)
# recuperer les order_beers asccociées au bar_beers
# remonter et recup les orders associées au order_beers

# bar has_many order_beers through bar_beers
# penser à faire les association avec la table de jointure bar_beers