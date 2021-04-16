class CreateLineItems < ActiveRecord::Migration[6.1]
  def change
    create_table :line_items do |t|
      t.belongs_to :purchase_order, null: false, foreign_key: true
      t.monetize :line_total
      t.integer :quantity
      t.string :notes
      
      t.timestamps
    end
  end
end
