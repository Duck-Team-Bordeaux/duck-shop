# product_controller
class ProductsController < ApplicationController

  def index
    @shop = Shop.find(params[:shop_id])
    @products = @shop.products.where(category: params[:category])
    # @product = Product.find(params[:id])
    # @shop = Shop.find(params[:shop_id])
    # raise
  end

  def show
    @product = Product.find(params[:id])
  end

end
