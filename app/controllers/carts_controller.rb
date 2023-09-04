class CartsController < ApplicationController
  def index
    @carts = Cart.where(user_id: current_user.id).reverse
  end

  def new
    @cart = Cart.new
    @shop = Shop.find(params[:shop_id])
  end

  def create
    @cart = Cart.new(user_id: current_user.id, shop_id: params[:shop_id], progress: 0)
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

  def show
    @cart = Cart.find(params[:id])
  end

  def finish() end
end
