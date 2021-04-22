class CreatePriceCards < ActiveRecord::Migration[6.1]
  def change
    create_table :price_cards do |t|
      t.date :date
      t.monetize :aaa_price
      t.monetize :daytona_price
      t.belongs_to :item, null: false, foreign_key: true
      t.timestamps
    end
  end
end
