# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p 'Cleanning DB => START'
User.destroy_all
p 'User => cleaned'
Shop.destroy_all
p 'Shop => cleaned'
Product.destroy_all
p 'Product => cleaned'
p 'Cleanning DB => SUCSESS'

p 'Creating new users => START'
User.create!(email: 'toto@gmail.com', password: 'qwertyuiop')
p "Creating #{User.count} users => SUCSESS"

p 'Creating new shops => START'
Shop.create!(location: '82 Cr Balguerie Stuttenberg')
p "Creating #{Shop.count} shops => SUCSESS"

p 'Creating new products => START'
Product.create!(name: 'apricot', category: 'fruits', stock_quantity: 5, price: 3.49, shop_id: Shop.last)
Product.create!(name: 'nutella', category: 'snacks', stock_quantity: 10, price: 5.99, shop_id: Shop.last)
Product.create!(name: 'kinder bueno', category: 'snacks', stock_quantity: 15, price: 7.01, shop_id: Shop.last)
p "Creating #{Product.count} products => SUCSESS"
