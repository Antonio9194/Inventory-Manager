class RemoveMinimumStockFromItems < ActiveRecord::Migration[8.1]
  def change
    remove_column :items, :minimum_stock, :integer
  end
end
