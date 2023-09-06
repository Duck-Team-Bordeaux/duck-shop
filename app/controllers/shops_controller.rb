# shops_controller
class ShopsController < ApplicationController
  def index
    @shops = Shop.limit(6)
    @user = User.first
    @markers = @shops.geocoded.map do |shop|
      @distance_km = shop.distance_to([@user.latitude, @user.longitude])
      @distance_min = @distance_km * 10
      {
        lat: shop.latitude,
        lng: shop.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { shop: shop }),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    @shop = Shop.find(params[:id])
    @user = User.first
    @distance = @shop.distance_to([@user.latitude, @user.longitude]).round(3)
    @walk_time = (@shop.distance_to([@user.latitude, @user.longitude]) * 10).round(0)
    @categories = Category.limit(6)
    @all_categories = Category.all
  end
end
