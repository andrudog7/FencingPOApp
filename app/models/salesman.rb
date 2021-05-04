class Salesman < ApplicationRecord
    has_many :purchase_orders
    has_many :customers, through: :purchase_orders
    validates :name, presence: :true
end
