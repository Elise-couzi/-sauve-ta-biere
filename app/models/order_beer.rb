class OrderBeer < ApplicationRecord
  belongs_to :order
  belongs_to :bar_beer
end
