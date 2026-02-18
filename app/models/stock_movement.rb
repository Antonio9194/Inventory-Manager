class StockMovement < ApplicationRecord
  belongs_to :item
  validate :cannot_go_negative

  private

  def cannot_go_negative
    if item.current_stock < 0
      errors.add(:quantity, "Stock cannot be less than 0, restock immediately!")
    end
  end
end
