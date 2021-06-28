class OrderBeer < ApplicationRecord
  belongs_to :order
  belongs_to :bar_beer
  has_one :bar, through: :bar_beer
  has_one :beer, through: :bar_beer
end
