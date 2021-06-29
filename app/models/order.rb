class Order < ApplicationRecord
  belongs_to :user
  has_many :order_beers, dependent: :destroy
end
