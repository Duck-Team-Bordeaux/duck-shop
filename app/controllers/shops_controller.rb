class ShopsController < ApplicationController

  def show
    @shop = Shop.find(params[:id])
    @products = Product.all
  end


end
