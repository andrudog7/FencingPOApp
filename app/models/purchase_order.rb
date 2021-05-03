class PurchaseOrder < ApplicationRecord
  belongs_to :salesman
  belongs_to :customer
  belongs_to :account
  has_many :line_items
  has_many :types, through: :line_items
  monetize :total_cents
  
  def total
    self.line_items.inject(0){|total, line| total + line.line_total} 
  end
end
