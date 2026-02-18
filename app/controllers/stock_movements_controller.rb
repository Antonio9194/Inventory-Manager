class StockMovementsController < ApplicationController
  def create
    @item = Item.find(params[:item_id])

    @movement = @item.stock_movements.new(stock_movements_params)

    if @movement.save
      redirect_to item_path(@item)
    else
      redirect_to root_path
    end
  end

  private

  def stock_movements_params
    params.require(:stock_movement).permit(:quantity, :note)
  end
end
