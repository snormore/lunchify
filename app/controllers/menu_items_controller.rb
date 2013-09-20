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
    redirect_to menus_path
  end

  def edit
    @menu_item = MenuItem.find(params[:id])
  end

  def votes
    vote = Vote.new(value: params[:value], menu_item_id: params[:id])
    if vote.save
      redirect_to :back, notice: "Thank you for voting."
    else
      redirect_to :back, alert: "Unable to vote, perhaps you already did."
    end
  end

  private

  def menu_item_params
    params.require(:menu_item).permit(:food_item_id, :menu_id)
  end
  
end
