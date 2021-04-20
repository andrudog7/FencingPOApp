class LineItem < ApplicationRecord
  belongs_to :purchase_order
  belongs_to :type
  belongs_to :item 

  def calculate_total
    total = self.quantity * self.item.rate
    self.update(line_total_cents: total)
  end
end
