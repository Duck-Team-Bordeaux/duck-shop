# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p 'Deleting DB'
User.destroy_all
Shop.destroy_all
Product.destroy_all
p 'Deleted'

p 'Creating DB'

User.create!(email: 'toto@gmail.com', password: 'qwertyuiop')

Shop.create!(location: '82 Cr Balguerie Stuttenberg')

shop = Shop.find(1)

Product.create!(name: 'apricot', category: 'fruits', stock_quantity: 5, price: 3.49, shop: shop )
Product.create!(name: 'nutella', category: 'snacks', stock_quantity: 10, price: 5.99, shop: shop)
Product.create!(name: 'kinder bueno', category: 'snacks', stock_quantity: 15, price: 7.01, shop: shop)

p 'Done'
