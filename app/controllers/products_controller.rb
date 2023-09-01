class ProductsController < ApplicationController
  def index
    @shop = Shop.find(params[:shop_id])
    @category = Category.find(params[:category])
    @products = @shop.products.where(category: params[:category])
  end

  def show
    @product = Product.find(params[:id])
  end
end
