class Bar < ApplicationRecord
  belongs_to :user
  has_many :bar_beers
  has_many :schedules
end
