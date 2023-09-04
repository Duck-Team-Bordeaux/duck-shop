class CartsController < ApplicationController
  def index
    # @user = User.last
    @user = current_user
    @carts = Cart.where(user_id: @user.id).reverse
  end

  def new
    # @user = User.last
    @user = current_user
    @cart = Cart.new
    @shop = Shop.find(params[:shop_id])
  end

  def create
    @user = User.last
    # @user = current_user
    @cart = Cart.new(user_id: @user.id, shop_id: params[:shop_id], progress: 0)
    if @cart.save!
      redirect_to edit_shop_cart_path(id: @cart.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user = User.last
    # @user = current_user
    # @cart = Cart.new
    @cart = Cart.last
    @shop = Shop.find(params[:shop_id])
    @items = Item.where(cart: @user.cart_ids)

  end

  def update
  end

  def show
    @cart = Cart.find(params[:id])
    @items = @cart.items
  end

  def finish() end
end
