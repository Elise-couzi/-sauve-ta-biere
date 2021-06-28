class Beer < ApplicationRecord
  has_many :bar_beers
  has_many :order_beers, through: :bar_beers
end
