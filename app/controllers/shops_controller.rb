# shops_controller
class ShopsController < ApplicationController
  def index
    @shops = Shop.all
    # raise
  end
  def show
    @shop = Shop.find(params[:id])
    @products = @shop.products
    @unique_categories = @shop.products.distinct.pluck(:category)
  end
end
