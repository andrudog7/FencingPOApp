class PriceCard < ApplicationRecord
    belongs_to :item
    monetize :aaa_price_cents
    monetize :daytona_price_cents
end
