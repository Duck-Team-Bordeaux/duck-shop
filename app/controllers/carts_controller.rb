class CartsController < ApplicationController
  def index
    @user = User.last
    @carts = Cart.where(user_id: @user.id).reverse
  end

  def new
    @user = User.last
    @cart = Cart.new
    @shop = Shop.find(params[:shop_id])
  end

  def create
    @user = User.last
    @cart = Cart.new(user_id: @user.id, shop_id: params[:shop_id], progress: 0)
    if @cart.save!
      redirect_to edit_shop_cart_path(id: @cart.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit

  end

  def update

  end

  def finish() end
end
