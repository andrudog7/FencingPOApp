
class Salesman < ApplicationRecord
    has_many :purchase_orders
    has_many :customers, through: :purchase_orders
    validates :name, presence: :true
    has_one_attached :avatar do |attachable|
        attachable.variant :thumb, resize: "100x100"
    end

    def self.all_names
        self.all.collect(&:name).uniq
    end

    def self.group_by_customer(customer_id)
        self.all.group_by{|s|s.purchase_orders.where(:customer => customer_id).count}
      end
end
