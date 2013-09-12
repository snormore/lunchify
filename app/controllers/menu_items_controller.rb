class MenuItemsController < ApplicationController

  def new
    @menu_item = MenuItem.new
  end

  def index
    @menu_items = MenuItem.all
  end

  def create
    @menu_item = MenuItem.new(menu_item_params)
    @menu_item.save
    redirect_to @menu_item
  end

  def edit
    @menu_item = MenuItem.find(params[:id])
  end

  private

  def menu_item_params
    params.require(:menu_item).permit(:food_item_id, :menu_id)
  end
  
end
