class ShopsController < ApplicationController

  def show
    @shop = Shop.find(params[:id])
    @product = Product.new
  end


end
