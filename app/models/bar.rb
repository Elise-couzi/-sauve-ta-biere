class Bar < ApplicationRecord
  belongs_to :user
  has_many :bar_beers
  has_many :schedules
  has_many :order_beers, through: :bar_beers
end
