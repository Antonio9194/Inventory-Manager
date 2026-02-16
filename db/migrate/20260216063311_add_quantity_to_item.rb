class AddQuantityToItem < ActiveRecord::Migration[8.1]
  def change
    add_column :items, :quantity, :integer
  end
end
