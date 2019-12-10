# frozen_string_literal: true

class MenusController < ApplicationController
  def create
    @menu = Menu.new(menu_params)
    redirect_to admin_infobase_index_path if @menu.save
  end

  def destroy
    Menu.find(params[:id]).destroy
    redirect_to admin_infobase_index_path
  end

  private

  def menu_params
    params.require(:menu).permit(:title, :price, :category, :day)
  end
end

