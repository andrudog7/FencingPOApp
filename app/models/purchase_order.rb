class PurchaseOrder < ApplicationRecord
  belongs_to :salesman
  belongs_to :customer
  has_many :line_items
  has_many :types, through: :line_items
  
end
