class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :pro]
# commentaire
  def home
  end
end
