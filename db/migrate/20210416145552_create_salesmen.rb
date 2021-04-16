class CreateSalesmen < ActiveRecord::Migration[6.1]
  def change
    create_table :salesmen do |t|
      t.string :name

      t.timestamps
    end
  end
end
