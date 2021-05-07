
class Salesman < ApplicationRecord
    has_many :purchase_orders
    has_many :customers, through: :purchase_orders
    validates :name, presence: :true
    has_one_attached :avatar do |attachable|
        attachable.variant :thumb, resize: "100x100"
    end

    def thumbnail
    end
end
