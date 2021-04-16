class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.belongs_to :type, null: false, foreign_key: true
      t.string :color
      t.string :description
      t.monetize :rate

      t.timestamps
    end
  end
end
