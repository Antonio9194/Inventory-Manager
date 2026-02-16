class RemoveQuantityFromItems < ActiveRecord::Migration[8.1]
  def change
    remove_column :items, :quantity, :integer
  end
end
