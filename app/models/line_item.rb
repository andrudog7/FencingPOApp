class LineItem < ApplicationRecord
  belongs_to :purchase_order
  has_one :type
  has_one :item

end
