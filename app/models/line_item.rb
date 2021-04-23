class LineItem < ApplicationRecord
  belongs_to :purchase_order
  belongs_to :type
  belongs_to :item 
  monetize :line_total_cents

  def calculate_total
    total = self.quantity * self.find_item_price(self.item)
    self.update(line_total: total)
  end

  def find_item_price(item)
    date = self.purchase_order.created_at
    price_card = item.price_cards.where("date <= ?", date).sort_by(&:date).last
    if self.purchase_order.account.name === "AAA Fence"
      price_card.aaa_price 
    else
      price_card.daytona_price
    end 
  end

end
