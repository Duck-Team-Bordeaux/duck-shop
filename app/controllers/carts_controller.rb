class CartsController < ApplicationController
  def index
    @user = current_user
    @carts = Cart.where(user: @user).reverse
  end

  def new
    @user = User.last
    @cart = Cart.new
    @shop = Shop.find(params[:shop_id])
  end

  def create
    @user = User.last
    @shop = Shop.find(params[:shop_id])
    @cart = Cart.new
    @cart.user = @user
    @cart.shop = @shop
    if @cart.save!
      @cart.created!
      redirect_to edit_shop_cart_path(@shop, @cart)
    else
      render :new
    end
  end

  def edit
    @user = User.last
    @cart = Cart.find(params[:id])
    @shop = Shop.find(params[:shop_id])
    @item = Item.new
    @items = Item.where(cart: @cart)
    @total_price = @items.sum { |item| item.product.price * item.quantity }
  end

  def update
  end

  def show
    @cart = Cart.find(params[:id])
    @items = @cart.items
    @cart.payment!
  end

  def finish() end
end
