class FoodItemsController < ApplicationController
  def new
    @food_item = FoodItem.new
  end

  def index
    @food_items = FoodItem.all
  end

  def create
    @food_item = FoodItem.new(food_item_params)
    if @food_item.save
      flash[:success] = "Thank you for submitting the Food Item!"      
      redirect_to food_items_path
    else
      flash[:danger] = "Whoops! You've made an error while creating a Food Item."
      render action: :new
    end
  end

  def edit
    @food_item = FoodItem.find(params[:id])
  end

  def update
    @food_item = FoodItem.find(params[:id])
    if @food_item.update_attributes(food_item_params)
      flash[:success] = "Your food_item was updated."
      redirect_to food_items_path
    else
      flash[:danger] = "Please check the errors in your update."
      render 'edit'
    end
  end

  def destroy
    @food_item_to_delete = FoodItem.find(params[:id])
      @food_item_to_delete.destroy
      flash[:success] = "Food Item destroyed."
      redirect_to food_items_path
  end

  private

  def food_item_params
    params.require(:food_item).permit(:name, :description)
  end
end
