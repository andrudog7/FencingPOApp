class Customer < ApplicationRecord
    has_many :purchase_orders
end
