class MenusController < ApplicationController

  def new
    @menu = Menu.new
  end

  def index
    @menus = Menu.all
  end

  def create
    menu_params[:day] = Date.parse(menu_params[:day])
    @menu = Menu.new(menu_params)
    @menu.save
    redirect_to menus_path
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  private

  def menu_params
    params.require(:menu).permit(:day)
  end

end
