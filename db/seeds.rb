p 'Cleaning DB'
User.destroy_all
p 'User => cleaned'
Shop.destroy_all
p 'Shop => cleaned'
Product.destroy_all
p 'Product => cleaned'
p 'DB successfully cleaned'

# -------------USER-------------------------------------------------------------

p 'creating user'
User.create!(email: 'toto@gmail.com', password: 'qwertyuiop')

# -------------SHOP-------------------------------------------------------------

p 'creating shop'
shop = Shop.create!(location: '82 Cr Balguerie Stuttenberg')
Shop.create!(location: '15 Cr Portal')
Shop.create!(location: 'Place du Parlement')
Shop.create!(location: '36 Rue de la Faïencerie')
Shop.create!(location: "36 Allées d'Orléans")



# -------------PRODUCT----------------------------------------------------------
iditetaion = 1
shops = Shop.all

shops.each do |shop|

  # -------------Snacks-------------------------------------------------

  category = 'Snacks'
  p "Creating => #{category}"

  Product.create!(
    name: 'Sandwich Daunat XXL',
    description: 'Pour les plus gourmands et les grands appétits, 3 fois plus de plaisir avec ses 3 sandwichs avec une recette classique du marché, le jambon cheddar. Variez les plaisirs avec cette recette au pain suédois fondant.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 2.99,
    shop_id: iditetaion
  )

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '390g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion
  )

  Product.create!(
    name: 'DAUNAT Wrap jambon cheddar Daunat',
    description: 'Be Wrappy: des ingrédients travaillés avec du jambon, du cheddar relevé par une sauce burger, le tout dans une galette de blé, pour varier votre pause plaisir.',
    unit: '190g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 4.12,
    shop_id: iditetaion
  )

  Product.create!(
    name: 'Taboulé au poulet rôti Bonduelle',
    description: 'Taboulé à la viande de cuisse de poulet traitée en salaison rôtie / volaille Française Découvrez le Taboulé Poulet Bonduelle 300g, une semoule fine origine France, sans conservateur et encore plus de plaisir avec du poulet gourmand origine France !',
    unit: '300g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion
  )

  Product.create!(
    name: 'Mini bâtonnet de saucisson sec AUVERNOU',
    description: 'Viande de porc (Origine : France), LACTOSE, sel, poivres, sucre, dextrose, ail, macis, conservateurs : nitrate de potassium et nitrite de sodium, girofle, ferments. Enveloppe (boyau collagénique). 178 g de viande de porc utilisée pour 100g de produit fini.Présence éventuelle de fruits à coque',
    unit: '30g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 2.99,
    shop_id: iditetaion
  )

  p "#{category} Done!"

  # -------------Epicerie -------------------------------------------------

  category = 'Epicerie'
  p "Creating => #{category}"

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  p "#{category} => Done!"

  # -------------Produit frais -------------------------------------------------

  category = 'Produit frais'
  p "Creating => #{category}"

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  p "#{category} => Done!"

  # -------------Boisson -------------------------------------------------

  category = 'Boisson'
  p "Creating => #{category}"

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  p "#{category} => Done!"

  # -------------Hygiène & Beauté -------------------------------------------------

  category = 'Hygiène & Beauté'
  p "Creating => #{category}"

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  p "#{category} => Done!"

  # -------------Produits d'entretien -------------------------------------------------

  category = 'Epicerie'
  p "Creating => #{category}"

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '230g',
    category: category,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    shop_id: iditetaion,
  )

  p "#{category} => Done!"

  iditetaion +=1
  # --------- fin du Shop.each do |shop|
end
# ------------------------ END OF SEED------------------------------------------
p 'seed success'
