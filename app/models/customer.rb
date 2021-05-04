class Customer < ApplicationRecord
    has_many :purchase_orders
    validates :name, presence: :true
end
