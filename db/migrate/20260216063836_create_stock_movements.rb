class CreateStockMovements < ActiveRecord::Migration[8.1]
  def change
    create_table :stock_movements do |t|
      t.references :item, null: false, foreign_key: true
      t.integer :quantity
      t.string :note

      t.timestamps
    end
  end
end
