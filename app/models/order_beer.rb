class OrderBeer < ApplicationRecord
  belongs_to :order
  belongs_to :bar_beer
  has_one :bar, through: :bar_beer
  has_one :beer, through: :bar_beer
  monetize :amount_cents
  validates_numericality_of :quantity, only_integer: true, 
  less_than_or_equal_to: Proc.new { |order_beer| order_beer.bar_beer.quantity }, 
  greater_than_or_equal_to: 0
end
