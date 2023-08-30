class ShopsController < ApplicationController

  def show
    @shop = Shop.find(params[:id])
    @products = Product.global_search(params[:query])
  end


end
