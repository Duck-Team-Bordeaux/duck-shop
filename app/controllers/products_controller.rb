class ProductsController < ApplicationController
  before_action :find_product_of_category, only: :index
  before_action :set_product, only: :show

  def index
    @products = Product.where(category: params[:category])
  end

  def show
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def find_product_of_category
    @products = Product.where(category: 'snacks')
  end
end
