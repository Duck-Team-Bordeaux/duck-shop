class DashboardsManagerController < ApplicationController
  def users
    @users = User.all.reverse
  end

  def products
    @neg_products = Product.where(stock_quantity: 0, shop: 1)
    @best_products = Product.where('stock_quantity <= 3 AND shop_id = 1')
    @worst_products = Product.where('stock_quantity >= 13 AND shop_id = 1')
  end

  def wallet
    @carts_count = Cart.all.count
    result = 0
    Cart.all.each do |cart|
      result += cart.items.map { |item| item.quantity * item.product.price }.sum.round(2)
    end
    @turnover = result.round(2)
    @moy_cart = (result / Cart.all.count).round(2)

    @chart_data = {
      labels: %w[January February March April May June July],
      datasets: [{
        label: 'My First dataset',
        backgroundColor: 'transparent',
        borderColor: '#3B82F6',
        data: [37, 83, 78, 54, 12, 5, 99]
      }]
    }

    @chart_options = {
      scales: {
        yAxes: [{
          ticks: {
            beginAtZero: true
          }
        }]
      }
    }
  end
end
