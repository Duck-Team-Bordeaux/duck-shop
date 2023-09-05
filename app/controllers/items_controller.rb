class ItemsController < ApplicationController
  def index
    # raise
  end

  def show
  end

  def new
  end

  def create
    @cart = Cart.find(params[:cart_id])
    @shop = @cart.shop
    @product = @shop.products.sample
    @item = Item.new(quantity: 1)
    @item.cart = @cart
    @item.product = @product
    @item.save!
  end

  def edit
  end

  def delete
  end
end
