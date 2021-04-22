class AddNotesToPurchaseOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :purchase_orders, :notes, :string
  end
end
