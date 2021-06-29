class Order < ApplicationRecord
  belongs_to :user

  has_many :order_beers, dependent: :destroy
  monetize :amount_total_cents

end
