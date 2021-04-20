class LineItem < ApplicationRecord
  belongs_to :purchase_order
  belongs_to :type
  has_one :item 
end
