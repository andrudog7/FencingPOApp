class Account < ApplicationRecord
    has_many :purchase_orders
end
