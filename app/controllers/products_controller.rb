class ProductsController < ApplicationController
  def index
    @shop = Shop.find(params[:shop_id])
    @category = Category.find(params[:category_id])
    @products = @shop.products.where(category: @category)

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "products/list", locals: {products: @products}, formats: [:html] }
    end
  end

  def show
    @shop = Shop.find(params[:shop_id])
    @product = Product.find(params[:id])
  end
end
