class FoodItemsController < ApplicationController
  def new
    @food_item = FoodItem.new
  end

  def index
    @food_items = FoodItem.all
  end

  def create
    @food_item = FoodItem.new(food_item_params)
    @food_item.save
    redirect_to @food_item
  end

  def edit
    @food_item = food_item.find(params[:id])
  end

  private

  def food_item_params
    params.require(:food_item).permit(:name, :description)
  end
end
