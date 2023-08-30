class ShopsController < ApplicationController

  def show
    @shop = Shop.find(params[:id])
    @products = @shop.products
    @unique_categories = @shop.products.distinct.pluck(:category)
  end


end
