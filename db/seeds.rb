require "open-uri"

p 'Cleaning DB'
Shop.destroy_all
User.destroy_all
Product.destroy_all
Item.destroy_all
Cart.destroy_all
p 'Cart => cleaned'
p 'User => cleaned'
p 'Shop => cleaned'
p 'Product => cleaned'
p 'DB successfully cleaned'

# -------------USER-------------------------------------------------------------

p 'creating user'
User.create!(email: 'toto@gmail.com', password: 'qwertyuiop', address: 'Rue Poquelin Molière, 33000 Bordeaux, France')

# -------------SHOP-------------------------------------------------------------

p 'creating shop'
Shop.create!(location: 'Place du Parlement')
Shop.create!(location: '36 Allées d\'Orléans')
Shop.create!(location: '15 Cours Portal')
Shop.create!(location: '24 Quai de Bacalan')
Shop.create!(location: '36 Rue de la Faïencerie')

p 'creating categories'
snack = Category.new(name: "Snacks")
file = URI.open('https://res.cloudinary.com/ds1o2o82j/image/upload/v1693495595/uddxicyzw76wgnifvhub.jpg')
snack.photo.attach(io: file, filename: "snack.jpg", content_type: "image/jpg")
snack.save

drinks = Category.new(name: "Boissons")
file = URI.open('https://res.cloudinary.com/ds1o2o82j/image/upload/v1693495541/egrduxqjbm6dfdrlkdjf.jpg')
drinks.photo.attach(io: file, filename: "drinks.jpg", content_type: "image/jpg")
drinks.save

beauty = Category.new(name: "Hygiène & Beauté")
file = URI.open('https://res.cloudinary.com/ds1o2o82j/image/upload/v1693497311/fjiipi2ugcrggo6twc8u.jpg')
beauty.photo.attach(io: file, filename: "beauty.jpg", content_type: "image/jpg")
beauty.save

household = Category.new(name: "Produits d'entretien")
file = URI.open('https://res.cloudinary.com/ds1o2o82j/image/upload/v1693497326/y7bjsvhyugx7iin6mnlu.jpg')
household.photo.attach(io: file, filename: "household.jpg", content_type: "image/jpg")
household.save

fresh = Category.new(name: "Produit frais")
file = URI.open('https://res.cloudinary.com/ds1o2o82j/image/upload/v1693497295/wjbju15ddqwks2jv3jna.jpg')
fresh.photo.attach(io: file, filename: "fresh.jpg", content_type: "image/jpg")
fresh.save

pasta = Category.new(name: "Epicerie")
file = URI.open('https://res.cloudinary.com/ds1o2o82j/image/upload/v1693497280/ute3mpe54mslgzzqfjaz.jpg')
pasta.photo.attach(io: file, filename: "pasta.jpg", content_type: "image/jpg")
pasta.save

p 'done'

# -------------PRODUCT----------------------------------------------------------
shops = Shop.all

shops.each do |shop|

  # -------------Snacks-------------------------------------------------

  p 'creating snacks'

  Product.create!(
    name: 'Cup nouilles japonaises instantanées TANOSHI ',
    description: 'La saveur “teriyaki”, qui accompagne ces nouilles, vient d’une technique culinaire utilisée au Japon qui consiste à faire griller une viande préalablement marinée dans une sauce soja sucrée au mirin.',
    unit: '65g',
    stock_quantity: (0..15).to_a.sample,
    price: 1.74,
    image_url: 'https://media.auchan.fr/A0220090227000612872PRIMARY_1200x1200/B2CD/',
    shop: shop,
    category: snack
  )

  Product.create!(
    name: 'Xtrem box radiatori carbonara SODEBO',
    description: 'XtremBox, la seule box qui ne vous laissera pas sur votre faim ! 51% de radiatori cuits accompagnés de 13% de lardons cuits fumés, de 7% de mozzarella et de 6% de raclette.',
    unit: '400g',
    category: snack,
    stock_quantity: (0..15).to_a.sample,
    price: 3.99,
    image_url: 'https://media.auchan.fr/A0220100531000021019PRIMARY_1200x1200/B2CD/',
    shop: shop
  )

  Product.create!(
    name: 'Sandwich mega baguette Sodebo',
    description: 'Un sandwich à la générosité débordante pour les Méga faims ! Sandwich composé de 51% de baguette viennoise garni de 14% de mayonnaise allégée en matières grasses, 12% de poulet rôti traité en salaison et 7% d’oeuf.',
    unit: '390g',
    category: snack,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    image_url: 'https://media.auchan.fr/A0220070126000042383PRIMARY_1200x1200/B2CD/',
    shop: shop
  )

  Product.create!(
    name: 'DAUNAT Wrap jambon cheddar Daunat',
    description: 'Be Wrappy: des ingrédients travaillés avec du jambon, du cheddar relevé par une sauce burger, le tout dans une galette de blé, pour varier votre pause plaisir.',
    unit: '190g',
    category: snack,
    stock_quantity: (0..15).to_a.sample,
    price: 4.12,
    image_url: 'https://media.auchan.fr/A0220140226000659593PRIMARY_1200x1200/B2CD/',
    shop: shop
  )

  Product.create!(
    name: 'Taboulé au poulet rôti Bonduelle',
    description: 'Taboulé à la viande de cuisse de poulet traitée en salaison rôtie / volaille Française Découvrez le Taboulé Poulet Bonduelle 300g, une semoule fine origine France, sans conservateur et encore plus de plaisir avec du poulet gourmand origine France !',
    unit: '300g',
    category: snack,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    image_url: 'https://media.auchan.fr/A0220150911000863615PRIMARY_1200x1200/B2CD/',
    shop: shop
  )

  Product.create!(
    name: 'Mini bâtonnet de saucisson sec AUVERNOU',
    description: 'Viande de porc (Origine : France), LACTOSE, sel, poivres, sucre, dextrose, ail, macis, conservateurs : nitrate de potassium et nitrite de sodium, girofle, ferments. Enveloppe (boyau collagénique). 178 g de viande de porc utilisée pour 100g de produit fini.Présence éventuelle de fruits à coque',
    unit: '30g',
    category: snack,
    stock_quantity: (0..15).to_a.sample,
    price: 2.99,
    image_url: 'https://media.auchan.fr/P02000000000100PRIMARY_1200x1200/B2CD/',
    shop: shop
  )

  p "Done!"

  # -------------Epicerie -------------------------------------------------

  p 'creating Epicerie'

  Product.create!(
    name: 'Intégrale penne rigate RUMMO N°66',
    description: 'PENNE RIGATE N°66 INTEGRALES RUMMO',
    unit: '500g',
    category: pasta,
    stock_quantity: (0..15).to_a.sample,
    price: 2.85,
    image_url: 'https://media.auchan.fr/P02000000001E9VPRIMARY_1200x1200/B2CD/',
    shop: shop
  )

  Product.create!(
    name: "Riz long grain BEN'S ORIGINAL",
    description: "Essayez notre riz aux grains longs extra tendres BEN'S ORIGINAL™ dès aujourd'hui et créez une délicieuse recette que vous pourrez savourer en famille et entre amis',
    unit: '1kg'",
    category: pasta,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    image_url: 'https://media.auchan.fr/P020000000016CVPRIMARY_1200x1200/B2CD/',
    shop: shop
  )

  Product.create!(
    name: "Chips ondulées recette paysanne LAY'S",
    description: "Nos agriculteurs français à l'honneur Nos agriculteurs partenaires perpétuent le savoir-faire agricole français et produisent principalement en Hauts-de-France et en Nouvelle-Aquitaine des pommes de terre de qualité pour Lay's®.",
    unit: '370g',
    category: pasta,
    stock_quantity: (0..15).to_a.sample,
    price: 3.59,
    image_url: 'https://media.auchan.fr/P02000000000WD2PRIMARY_1200x1200/B2CD/',
    shop: shop
  )

  Product.create!(
    name: "Biscuits fourrés goût chocolat PRINCE",
    description: "Biscuits fourrés (35 %) parfum chocolat. Prince Goût Chocolat est un délicieux biscuit croustillant au blé complet et au bon goût de chocolat. Adapté au goûter des enfants, c’est le compagnon idéal des pauses gourmandes !",
    unit: '300g',
    category: pasta,
    stock_quantity: (0..15).to_a.sample,
    price: 1.54,
    image_url: 'https://media.auchan.fr/A0220150721000623554PRIMARY_1200x1200/B2CD/',
    shop: shop
  )

  Product.create!(
    name: "L'original café soluble spécial filtre NESCAFE",
    description: 'Café instantané La recette originale de NESCAFE Spécial Filtre est de retour ! Redécouvrez son arôme unique, riche et subtil que vous aimez tant.',
    unit: '200g',
    category: pasta,
    stock_quantity: (0..15).to_a.sample,
    price: 2.99,
    image_url: 'https://media.auchan.fr/A0219900101000063153PRIMARY_1200x1200/B2CD/',
    shop: shop
  )
  p " Done!"

  # -------------Produit frais -------------------------------------------------


  p "Creating Produit frais"

  Product.create!(
    name: 'Bananes bio 5 pièces',
    description: 'Délicieuse bananes, proveance équateur',
    unit: '5 pièces',
    category: fresh,
    stock_quantity: (0..15).to_a.sample,
    price: 1.99,
    image_url: 'https://media.auchan.fr/A0220150623000860369PRIMARY_1200x1200/B2CD/',
    shop: shop
  )

  Product.create!(
    name: 'Tomates rondes en grappes',
    description: "Les tomates en grappe sont fermes, croquantes et légèrement acidulées. C'est l'idéal pour les tartes, les soupes, les sauces, en salade, en plat cuisiné ou encore au grill.",
    unit: '500g',
    category: fresh,
    stock_quantity: (0..15).to_a.sample,
    price: 2.99,
    image_url: 'https://media.auchan.fr/A0219970916000039575PRIMARY_1200x1200/B2CD/',
    shop: shop
  )

  Product.create!(
    name: 'Pommes Bicolores',
    description: 'Be Wrappy: des ingrédients travaillés avec du jambon, du cheddar relevé par une sauce burger, le tout dans une galette de blé, pour varier votre pause plaisir.',
    unit: '2kg',
    category: fresh,
    stock_quantity: (0..15).to_a.sample,
    price: 3.99,
    image_url: 'https://media.auchan.fr/A0220020220000048644PRIMARY_1200x1200/B2CD/',
    shop: shop
  )

  Product.create!(
    name: 'Oignons',
    description: 'Oignos bio',
    unit: '1kg',
    category: fresh,
    stock_quantity: (0..15).to_a.sample,
    price: 1.99,
    image_url: 'https://media.auchan.fr/A0220090326000342866PRIMARY_1200x1200/B2CD/',
    shop: shop
  )

  Product.create!(
    name: 'Ail',
    description: 'ail bio ',
    unit: '200g',
    category: fresh,
    stock_quantity: (0..15).to_a.sample,
    price: 2.49,
    image_url: 'https://media.auchan.fr/A0220211005000024521PRIMARY_1200x1200/B2CD/',
    shop: shop
  )


  p "Done!"

  # -------------Boisson -------------------------------------------------

  p "Creating Boissons"

  Product.create!(
    name: 'Eau minérale naturelle plate VITTEL',
    description: 'VITTEL NATURE PET 50CL',
    unit: '50cl',
    category: drinks,
    stock_quantity: (0..15).to_a.sample,
    price: 1.47,
    image_url: 'https://media.auchan.fr/S0100000004001RPRIMARY_1200x1200/B2CD/',
    shop: shop
  )


  Product.create!(
    name: 'Canette Dr Pepper',
    description: 'CANETTE DR PEPPER Boisson rafraîchissante aux arômes fruits, contient de la caféine',
    unit: '33cl',
    category: drinks,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    image_url: 'https://media.auchan.fr/A0220121004000405652PRIMARY_1200x1200/B2CD/',
    shop: shop
  )


  Product.create!(
    name: 'Bouteille Coca-Cola Cherry',
    description: 'Boisson rafraîchissante aux extraits végétaux et arôme cerise.',
    unit: '1.25l',
    category: drinks,
    stock_quantity: (0..15).to_a.sample,
    price: 2.03,
    image_url: 'https://media.auchan.fr/A0220190321000539344PRIMARY_1200x1200/B2CD/',
    shop: shop
  )

  Product.create!(
    name: "Pur jus d'orange sans pulpe",
    description: "Innocent jus d'orange sans pulpe 1.5L Le jus innocent est uniquement composé de jus pressé et de fruits écrasés, sans colorants, ni conservateurs.",
    unit: '1.5l',
    category: drinks,
    stock_quantity: (0..15).to_a.sample,
    price: 3.74,
    image_url: 'https://media.auchan.fr/A0220140425000791333PRIMARY_1200x1200/B2CD/',
    shop: shop
  )

  Product.create!(
    name: 'Bière blonde 8,5% bouteille Duvel',
    description: 'Médaille de bronze aux World Beer Awards 2022
    Duvel 33cl 8.5° Bière blonde de spécialité belge',
    unit: '33cl',
    category: drinks,
    stock_quantity: (0..15).to_a.sample,
    price: 1.95,
    image_url: 'https://media.auchan.fr/A0219900101000055487PRIMARY_1200x1200/B2CD/',
    shop: shop
  )


  p "Done!"

  # -------------Hygiène & Beauté -------------------------------------------------

  p 'Creating Hygiène & Beauté'

  Product.create!(
    name: 'Compak tampon avec applicateur regular Tampax',
    description: '
    Les tampons Tampax Compak Régulier vous offrent une protection en toute discrétion pour les flux légers à moyens. Les tampons Tampax Compak offrent une protection pendant les règles dans un format très pratique',
    unit: '27pce',
    category: beauty,
    stock_quantity: (0..15).to_a.sample,
    price: 7.81,
    image_url: 'https://media.auchan.fr/MEDIASTEP177050828_1200x1200/B2CD/',
    shop: shop
  )


  Product.create!(
    name: 'Déodorant stick 24h homme musk anti-traces Mennen',
    description: 'déodorant pour homme',
    unit: '60ml',
    category: beauty,
    stock_quantity: (0..15).to_a.sample,
    price: 4.75,
    image_url: 'https://media.auchan.fr/P02000000001MDMPRIMARY_1200x1200/B2CD/',
    shop: shop
  )


  Product.create!(
    name: 'Original Care déodorant bille anti transpirant Dove',
    description: 'déodorant pour femme',
    unit: '50ml',
    category: beauty,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    image_url: 'https://media.auchan.fr/S010000000403NNPRIMARY_1200x1200/B2CD/',
    shop: shop
  )


  Product.create!(
    name: 'Pain de toilette original Dove',
    description: 'Savon en pain de marque Dove',
    unit: '6x90g',
    category: beauty,
    stock_quantity: (0..15).to_a.sample,
    price: 5.34,
    image_url: 'https://media.auchan.fr/P02000000001MMJPRIMARY_1200x1200/B2CD/',
    shop: shop
  )


  Product.create!(
    name: 'Papier toilette 2 épaisseurs Lotus',
    description: 'Papier Toilette Lotus Collection Blanc ou Lilas x6 rouleaux Découvrez les 3 motifs Lotus Collection pour habiller vos toilettes avec style. A chacun son motif pour varier les ambiances tout en gardant le confort Lotus.',
    unit: '6pce',
    category: beauty,
    stock_quantity: (0..15).to_a.sample,
    price: 3.20,
    image_url: 'https://media.auchan.fr/A0220110520000566205PRIMARY_1200x1200/B2CD/',
    shop: shop
  )


  p 'Done!'

  # -------------Produits d'entretien -------------------------------------------------

  p "Creating Produits d'entretien"

  Product.create!(
    name: 'DESTOP Gel déboucheur épais',
    description: 'Destop Déboucheur Gel Express 950ML',
    unit: '950ml',
    category: household,
    stock_quantity: (0..15).to_a.sample,
    price: 4.39,
    image_url: 'https://media.auchan.fr/S010000000403W4PRIMARY_1200x1200/B2CD/',
    shop: shop
  )


  Product.create!(
    name: 'Liquide vaisselle excel PAIC',
    description: "L’expert de votre vaisselle qui élimine les graisses les plus tenaces. Sa formule active à froid et ultra dégraissante est aussi efficace à l'eau froide qu'à l'eau chaude et permet de laver plus de 2200 assiettes pour une hygiène parfaite.Toute l’efficacité de PAIC dans un petit format 500MLUne éponge, de l’eau et du Paic Excel². C’est simple. Pas besoin d’essuyer.",
    unit: '500ml',
    category: household,
    stock_quantity: (0..15).to_a.sample,
    price: 2.68,
    image_url: 'https://media.auchan.fr/P02000000001L6GPRIMARY_1200x1200/B2CD/',
    shop: shop
  )


  Product.create!(
    name: 'Gratte éponge 3 éponges SPONTEX',
    description: 'GRATTE-EPONGE de SPONTEX dispose d’une texture super efficace et très solide. spontex - gratte-éponge, x3',
    unit: '3pce',
    category: household,
    stock_quantity: (0..15).to_a.sample,
    price: 1.48,
    image_url: 'https://media.auchan.fr/A0219980402000514726PRIMARY_1200x1200/B2CD/',
    shop: shop
  )


  Product.create!(
    name: 'Essuie-tout décoré 3 rouleaux Okay',
    description: 'Essuie-tout Okay Décor x3 Rouleaux Essuie-tout OKAY® 3 rouleaux décorés',
    unit: '3pce',
    category: household,
    stock_quantity: (0..15).to_a.sample,
    price: 2.73,
    image_url: 'https://media.auchan.fr/A0220170804000453371PRIMARY_1200x1200/B2CD/',
    shop: shop
  )


  Product.create!(
    name: 'Papier cuisson en feuille Albal',
    description: "ALBAL PAPIER CUISSON EN FEUILLES X16 Papier Cuisson en feuilles - Idéal pour les préparations salées ou sucrées - Structure anti-adhérente qui réduit le contact entre les aliments et le papier et diminue ainsi le risque d'adhérer - Revêtement siliconé sans ajout de matière grasse - Le démoulage est rapide et les moules restent propres",
    unit: '1pce',
    category: household,
    stock_quantity: (0..15).to_a.sample,
    price: 3.28,
    image_url: 'https://media.auchan.fr/A0220110905000767775PRIMARY_1200x1200/B2CD/',
    shop: shop
  )


  p "Done!"

  # --------- fin du Shop.each do |shop|
  p "SHOP #{shop.id} finished seeding"
end

# -------------CART-------------------------------------------------------------

p 'creating carts...'

cart = Cart.create!(
  shop: Shop.first,
  user: User.first
)

cart = Cart.create!(
  shop: Shop.second,
  user: User.first
)

cart = Cart.create!(
  shop: Shop.last,
  user: User.first
)

p 'new carts are created'
# -------------ITEM-------------------------------------------------------------
p 'creating items...'


Item.create!(
  cart: cart,
  quantity: (1..3).to_a.sample,
  product_id: (0..31).to_a.sample
)

Item.create!(
  cart: cart,
  quantity: (1..3).to_a.sample,
  product_id: (0..31).to_a.sample
)

Item.create!(
  cart: cart,
  quantity: (1..3).to_a.sample,
  product_id: (0..31).to_a.sample
)

Item.create!(
  cart: cart,
  quantity: (1..3).to_a.sample,
  product_id: (0..31).to_a.sample
)

Item.create!(
  cart: cart,
  quantity: (1..3).to_a.sample,
  product_id: (0..31).to_a.sample
)


p 'new items are created'


# ------------------------ END OF SEED------------------------------------------
p 'seed success'
