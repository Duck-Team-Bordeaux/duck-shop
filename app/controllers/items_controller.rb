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
    @product = Product.find_by(ean: params[:barcode])
    @item = Item.find_or_initialize_by(product: @product, cart: @cart)
    @item.quantity += 1
    if @item.save
      @items = Item.where(cart: @cart)
      @total_price = @items.sum { |item| item.product.price * item.quantity }
      respond_to do |format|
        format.json
        format.text { render partial: "carts/items", locals: {items: @items, total_price: @total_price }, formats: [:html] }
      end
    else
      render 'carts/edit', status: :unprocessable_entity
    end
  end

  def edit
    @cart = Cart.find(params[:cart_id])
    @item = Item.find(params[:id])
  end

  def update
    @cart = Cart.find(params[:cart_id])
    @shop = @cart.shop
    @item = Item.find(params[:id])
    if params[:quantity] == 'minus'
      @item.quantity -= 1
      @item.save
      redirect_to edit_shop_cart_path(@shop, @cart)
    else
      @item.quantity += 1
      @item.save
      redirect_to edit_shop_cart_path(@shop, @cart)
    end
  end

  def destroy
    @cart = Cart.find(params[:cart_id])
    @shop = @cart.shop
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to edit_shop_cart_path(@shop, @cart), status: :see_other
  end
end
