class Item < ApplicationRecord
  has_many :stock_movements, dependent: :destroy

  def current_stock
    stock_movements.sum(:quantity)
  end

  LOW_STOCK = 200

  def low_stock?
    current_stock <= LOW_STOCK
  end
end
