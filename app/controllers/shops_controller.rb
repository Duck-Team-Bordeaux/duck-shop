# shops_controller
class ShopsController < ApplicationController
  def index
    @shops = Shop.all
    @shop = Shop.new
    @user = User.last
    @markers = @shops.geocoded.map do |shop|
      @distance_km = shop.distance_to([@user.latitude, @user.longitude])
      @distance_min = @distance_km*10
      {
        lat: shop.latitude,
        lng: shop.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { shop: shop })
      }
    end

  end

  def show
    @shop = Shop.find(params[:id])
    @user = User.last
    @categories = Category.all
  end
end
