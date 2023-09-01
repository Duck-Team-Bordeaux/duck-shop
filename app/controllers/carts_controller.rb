class CartsController < ApplicationController
  def index
    @carts = Cart.where(user_id: current_user.id)
  end

  def new
    @cart = Cart.new
    @shop = Shop.find(params[:shop_id])
  end

  def create
    @cart = Cart.new(cart_params)
    if @cart.save!
      redirect_to cart_path(@cart)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def finish() end

  private

  def cart_params
    params.require(:cart).permit(:user_id, :shop_id, :progress)
  end
end
