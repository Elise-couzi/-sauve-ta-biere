class BarBeer < ApplicationRecord
  belongs_to :bar
  belongs_to :beer
  has_many :order_beers
end
