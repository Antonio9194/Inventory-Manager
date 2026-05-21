class ItemsController < ApplicationController
  before_action :set_item, only: [ :show, :destroy, :confirm_delete ]
  def index
    @items = Item.all
  end

  def show
    @movements = @item.stock_movements.order(created_at: :desc)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:notice] = "Item created successfully"
      redirect_to items_path
    else
      flash[:alert] = "Something went wrong"
      render :new
    end
  end

  def destroy
    @item.destroy
    flash[:notice] = "Item deleted"
    redirect_to root_path
  end

  def confirm_delete
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
  def set_item
    @item = Item.find(params[:id])
  end
end
