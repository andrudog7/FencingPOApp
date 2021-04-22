class AddAccountToPurchaseOrder < ActiveRecord::Migration[6.1]
  def change
    add_reference :purchase_orders, :account, index: true
  end
end
