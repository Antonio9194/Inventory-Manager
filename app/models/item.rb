class Item < ApplicationRecord
  has_many :stock_movements

  def currnt_stock
    stock_movements.sum(:quantity)
  end
end
