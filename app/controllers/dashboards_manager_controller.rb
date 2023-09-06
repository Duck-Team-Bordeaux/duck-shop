class DashboardsManagerController < ApplicationController
  def users() end
  def products
    @neg_products = Product.where(stock_quantity: 0, shop: 1)
    @best_products = Product.where(stock_quantity: 2, shop: 1)
    @worst_products = Product.where(stock_quantity: 14, shop: 1)
  end
  def wallet() end
end
