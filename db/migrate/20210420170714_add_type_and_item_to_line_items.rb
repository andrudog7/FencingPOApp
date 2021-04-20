class AddTypeAndItemToLineItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :line_items, :type, index: true
    add_reference :line_items, :item, index: true
  end
end
