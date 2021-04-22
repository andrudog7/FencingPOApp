class Item < ApplicationRecord
  belongs_to :type
  has_many :line_items
  has_many :price_cards
  monetize :rate_cents
end
