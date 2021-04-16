class CreatePurchaseOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :purchase_orders do |t|
      t.belongs_to :salesman, null: false, foreign_key: true
      t.belongs_to :customer, null: false, foreign_key: true
      t.date :date
      t.monetize :total 
      t.monetize :sales_tax

      t.timestamps
    end
  end
end
