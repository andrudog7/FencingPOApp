class Item < ApplicationRecord
  belongs_to :type
  has_many :line_items
  monetize :rate_cents
end
