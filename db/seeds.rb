p 'Deleting DB'
User.destroy_all
p 'User => cleaned'
Shop.destroy_all
p 'Shop => cleaned'
Product.destroy_all
p 'Deleted'


# -------------USER AND SHOP----------------------------------------------------

p 'creating user and shop'
User.create!(email: 'toto@gmail.com', password: 'qwertyuiop')
shop = Shop.create!(location: '82 Cr Balguerie Stuttenberg')



# -------------PRODUIT LAITIERS-------------------------------------------------

category = 'Produit Laitiers, Oeufs, Fromages'
p "Creating #{category}"
Product.create!(
  name: 'Beurre tendre doux 250g',
  description: 'Beurre tendre doux, 82% de matière grasse',
  category: category,
  stock_quantity: 10,
  price: 2.23,
  shop_id: shop.id
)

Product.create!(
  name: 'Crème fraiche épaisse légère 15%MG 50cl',
  description: 'Crème fraîche légère épaisse à 15% de matière grasse',
  category: category,
  stock_quantity: 10,
  price: 1.58,
  shop_id: shop.id
)

Product.create!(
  name: 'Oeufs de poules élevées en plein air sans ogm 18 œufs',
  description: '18 œufs de catégorie A de poules élevées en plein air (code commençant par 1 sur l\'œuf). Calibre Moyen ou gros',
  category: category,
  stock_quantity: 10,
  price: 4.76,
  shop_id: shop.id
)

Product.create!(
  name: 'Camembert 250g',
  description: 'Camembert au lait pasteurisé.',
  category: category,
  stock_quantity: 10,
  price: 1.58,
  shop_id: shop.id
)

Product.create!(
  name: 'Emmental français en bloc 400g',
  description: 'Emmental français Fromage à pâte pressée cuite, au lait pasteurisé',
  category: category,
  stock_quantity: 10,
  price: 4.33,
  shop_id: shop.id
)

p "#{category} Done!"

# -------------FRUITS, LÉGUMES -------------------------------------------------

category = 'Fruits, Légumes'
p "Creating #{category}"
Product.create!(
  name: 'Pommes bicolores',
  description: 'La pomme Gala a une robe bicolore avec une dominante de rouge, sa saveur douce est à la fois sucrée et acide. C\'est une variété ferme, croquante et juteuse, elle est idéale à croquer pour se désaltérer mais elle peut aussi se consommer en préparation culinaire car elle reste ferme même après cuisson',
  category: category,
  stock_quantity: 10,
  price: 3.99,
  shop_id: shop.id
)

Product.create!(
  name: 'Kiwis bio 6 pièces',
  description: 'Le kiwi est un fruit d\'hiver, avec sa chair verte piquetée de point noirs, le kiwi est plein de bienfaits : outre la vitamine C qui permet de booster le système immunitaire, le kiwi procure des antioxydants et des fibres qui sont bénéfiques au renouvellement cellulaire et au système digestif.',
  category: category,
  stock_quantity: 10,
  price: 4.99,
  shop_id: shop.id
)

Product.create!(
  name: 'Pastèque bio 1 pièce',
  description: 'Pastèque bio',
  category: category,
  stock_quantity: 10,
  price: 4.99,
  shop_id: shop.id
)

Product.create!(
  name: 'Tomates rondes en grappes bio 500g',
  description: 'Les tomates en grappe sont fermes, croquantes et légèrement acidulées. C\'est l\'idéal pour les tartes, les soupes, les sauces, en salade, en plat cuisiné ou encore au grill. La tomate est prête à être dégustée lorsqu\'elle est ferme et souple sous la pression du doigt avec une peau lisse, brillante et sans tache.',
  category: category,
  stock_quantity: 10,
  price: 2.99,
  shop_id: shop.id
)

Product.create!(
  name: 'Carottes Primeur 1kg',
  description: 'La carotte est un légume plein de bienfaits : riche en bêta-carotènes la carotte donne bonne mine, ses vitamines A permettent d\'améliorer la vue et de protéger la peau, et c\'est un légume très peu calorique, à consommer sans modération',
  category: category,
  stock_quantity: 10,
  price: 4.33,
  shop_id: shop.id
)

p "#{category} Done!"
