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
    if @item.save!
      redirect_to edit_shop_cart_path(@shop, @cart)
    else
      render 'carts/edit'
    end
  end

  def edit
  end

  def delete
  end
end
