# shops_controller
class ShopsController < ApplicationController
  def index
    @shops = Shop.all
    @user = current_user
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
    @distance = @shop.distance_to([current_user.latitude, current_user.longitude]).round(3)
    @walk_time = (@shop.distance_to([current_user.latitude, current_user.longitude]) * 10).round(0)
    @categories = Category.all.last(4)
  end
end
