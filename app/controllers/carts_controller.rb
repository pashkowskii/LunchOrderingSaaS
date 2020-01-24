# frozen_string_literal: true

class CartsController < ApplicationController
  before_action :initialize_session

  def index
    @cart_facade = Cart::IndexFacade.new(session_cart: session[:cart])
  end

  def create
    if AddToCart.call(params: params,
                      session_cart: session[:cart])
      redirect_to users_dashboard_index_path
      flash[:success] = 'Successfully Added To Cart'
    else
      redirect_to users_dashboard_index_path
      flash[:error] = 'Choose Your Meal First!'
    end
  end

  def destroy
    session[:cart].delete(params[:id].to_i)
    redirect_to carts_path
  end

  private

  def initialize_session
    session[:cart] ||= []
  end
end

