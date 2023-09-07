class DashboardsManagerController < ApplicationController
  def users
    @hide_navbar = true
    @navbarmanager = true
    @users = User.all
  end

  def products
    @hide_navbar = true
    @navbarmanager = true
    @neg_products = Product.where(stock_quantity: 0, shop: 1)
    @best_products = Product.where('stock_quantity <= 3 AND shop_id = 1')
  end

  def wallet
    @hide_navbar = true
    @navbarmanager = true
    @carts_count = Cart.all.count
    result = 0
    Cart.all.each do |cart|
      result += cart.items.map { |item| item.quantity * item.product.price }.sum.round(2)
    end
    @turnover = result.round(2)
    @moy_cart = (result / Cart.all.count).round(2)
    data_chart = []
    Cart.all.each do |cart|
      data_chart << cart.items.map { |item| item.quantity * item.product.price }.sum.round(2)
    end

    @chart_data = {
      labels: %w[01/07/23 05/07/23 10/07/23 15/07/23 20/07/23 25/07/23 30/07/23],
      datasets: [{
        label: "Chiffre d'affaire du mois de Juillet",
        backgroundColor: 'white',
        borderColor: '#4614CD',
        data: data_chart
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
