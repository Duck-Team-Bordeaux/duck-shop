# product_controller
class ProductsController < ApplicationController

  def index
    @products = Product.where(category: params[:category])
    # @product = Product.find(params[:id])
    # @shop = Shop.find(params[:shop_id])
    # raise
  end

  def show
    @product = Product.find(params[:id])
  end

end
