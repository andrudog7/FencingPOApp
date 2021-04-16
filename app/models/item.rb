class Item < ApplicationRecord
  belongs_to :type
  monetize :rate_cents
end
