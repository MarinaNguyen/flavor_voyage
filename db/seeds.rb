# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'open-uri'
require "nokogiri"
# require 'json'

API_URL = "https://api.edamam.com/search?from=0&to=100&app_id=#{ENV['APP_ID']}&app_key=
#{ENV['APP_KEY']}&q=recipes"

Ingredient.destroy_all
Recipe.destroy_all
User.destroy_all
Restaurant.destroy_all
RestaurantReview.destroy_all

user1 = User.create!(name: "Albert", email: "albert@gmail.com", password: "azerty", phone_number: "0600000000")
user2 = User.create!(name: "Lou", email: "lou@gmail.com", password: "azerty", phone_number: "06000000000")
user3 = User.create!(name: "Lila", email: "lila@gmail.com", password: "azerty", phone_number: "06000000000")
user4 = User.create!(name: "Eric", email: "eric@gmail.com", password: "azerty", phone_number: "07906424648")

# response = URI.open(API_URL).read
# recipes_data = JSON.parse(response)
# recipes_data['hits'].first(200).each do |hit|
#   hit_recipe = hit['recipe']
#   recipe = Recipe.create!(
#     name: hit_recipe['label'],
#     country: hit_recipe['cuisineType'].first
#   )

#   hit_recipe['ingredientLines'].each do |line|
#     Ingredient.create!(
#       name: line,
#       recipe:
#     )
#   end
# end

# France
Restaurant.create(image_url: "https://img-4.linternaute.com/wE3UZdTethn99-heK4SqMUGjs2I=/fit-in/550x550/ef2dd3e3a3d742abb1fcadc508fd4016/restaurant/11744.jpg", name: "L'Oustau", address: "515 Route DE BAUMANIERE, 13520 Les Baux-de-Provence", phone_number: "04 90 54 33 07", country: "france")
Restaurant.create(image_url: "https://res.cloudinary.com/tf-lab/image/upload/restaurant/c0417077-c1cd-4c16-a1ac-7cc796a2200d/37aeb6b7-fcc6-4fbf-a2f8-9e669c59428e.jpg", name: "Le Petit Nice Passedat", address: "17 Rue des Braves Anse de Maldormé, 13007 Marseille", phone_number: "04 91 59 25 92", country: "france")
Restaurant.create(image_url: "https://alexandertheguest.com/wp-content/uploads/2023/01/2021-10-01-18-02-35-167eec1dd12dc60ee5543c00ec7ad20b.jpeg", name: "AM", address: "9 Rue François Rocca, 13008 Marseille", phone_number: "04 91 24 83 63", country: "france")
Restaurant.create(image_url: "https://www.ducasse-paris.com/sites/default/files/2019-10/louis-xv-img-mobile.jpg", name: "Le Louis XV", address: "Place du Casino, 98000 Monaco", phone_number: "+377 98 06 88 64", country: "france")
Restaurant.create(image_url: "https://images2.bovpg.net/r/media/1/4/3/7/2/437281.jpg", name: "Mirazur", address: "30 Avenue Aristide Briand, 06500 Menton", phone_number: "04 92 41 86 86", country: "france")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/0a/e9/15/4d/la-vague-d-or.jpg", name: "La Vague d'Or", address: "Plage de la Bouillabaisse, 83990 Saint-Tropez", phone_number: "04 94 55 91 00", country: "france")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/0c/c8/5b/c4/la-dame-de-pic-paris.jpg", name: "La Dame de Pic", address: "20 Rue du Louvre, 75001 Paris", phone_number: "01 42 60 40 40", country: "france")
Restaurant.create(image_url: "https://img.over-blog-kiwi.com/0/99/16/03/20180927/ob_22a437_dscf1778.jpg", name: "Troisgros", address: "728 Route de Villerest, 42155 Ouches", phone_number: "04 77 71 66 97", country: "france")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/1d/4a/68/cc/caption.jpg", name: "Le Suquet", address: "Route de Laguiole, 12210 Laguiole", phone_number: "05 65 51 18 20", country: "france")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/1d/46/f2/48/salle-2021-stephaniebiteau.jpg", name: "La Marine", address: "3 Rue Marie Lemonnier, 85330 Noirmoutier-en-l'Île", phone_number: "02 51 39 23 09", country: "france")
Restaurant.create(image_url: "https://www.maisons-de-bricourt.com/media/rich-editor/coquillage_table-6047ba2a0c039.jpg", name: "Le Coquillage", address: "Le Buot, 35350 Saint-Méloir-des-Ondes", phone_number: "02 99 89 64 76", country: "france")
Restaurant.create(image_url: "https://fr.gaultmillau.com/download/63eb674a7502eb9b070f8a3b/image/jpeg/la-grenouillere.jpg", name: "La Grenouillère", address: "19 Rue de la Grenouillère, 62170 La Madelaine-sous-Montreuil", phone_number: "03 21 06 07 22", country: "france")
Restaurant.create(image_url: "https://www.yonder.fr/sites/default/files/destinations/A-restaurant-pierre-gagnaire-paris-salle-01%20%C2%A9%20THOMAS_DUVAL.jpg", name: "Restaurant Pierre Gagnaire", address: "6 Rue Balzac, 75008 Paris", phone_number: "01 58 36 12 50", country: "france")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/24/03/dd/d9/salle-du-restaurant-alleno.jpg", name: "Alléno Paris", address: "8 Avenue Dutuit, 75008 Paris", phone_number: "01 53 05 10 00", country: "france")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/17/45/4e/fb/le-clarence.jpg", name: "Le Clarence", address: "31 Avenue Franklin Delano Roosevelt, 75008 Paris", phone_number: "01 82 82 10 10", country: "france")
Restaurant.create(image_url: "https://www.lelauracee.com/restaurants/d6295f03afd5e2087cd584e41b66c563/photos/8308/slide%20(4)_20181116110240.jpg", name: "Le Lauracée", address: "96 Rue Grignan, 13001 Marseille", phone_number: "0491336336", country: "france")
Restaurant.create(image_url: "https://fr.gaultmillau.com/download/6144409ebb6edc254539a394/image/jpeg/les-arcenaulx.jpg", name: "Restaurant Les Arcenaulx", address: "25 Cours Honoré d'Estienne d'Orves, 13001 Marseille", phone_number: "0491598030", country: "france")
Restaurant.create(image_url: "https://static.apidae-tourisme.com/filestore/objets-touristiques/images/42/172/9612330.jpg", name: "L'Escapade Marseillaise", address: "134 Rue Paradis, 13006 Marseille", phone_number: "0491316169", country: "france")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/0f/2c/f2/6f/salle-restaurant.jpg", name: "Restaurant Saisons", address: "8 Rue Sainte-Victoire, 13006 Marseille", phone_number: "0951891838", country: "france")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/19/07/4c/a3/chez-nous.jpg", name: "Chez Nous", address: "22 Place Notre Dame du Mont, 13006 Marseille", phone_number: "0491376624", country: "france")

# Spain
Restaurant.create(image_url: "https://live.staticflickr.com/3122/3181199511_0ab3da5559_b.jpg", name: "Els Fogons De Canadal", address: "Diseminado Afores, 77, 17709 La Jonquera, Girona, Espagne", phone_number: "+34634849731", country: "spain")
Restaurant.create(image_url: "https://www.lamiventa.com/media/home-img-01.jpg", name: "La Mi Venta", address: "Plaza de la Marina Española, 7, Centro, 28013 Madrid, Espagne", phone_number: "+34915595091", country: "spain")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/0d/70/ad/a1/mesas-en-el-comedor-con.jpg", name: "El Celler de Can Roca", address: "Carrer de Can Sunyer, 48, 17007 Girona, Espagne", phone_number: "+34972222157", country: "spain")
Restaurant.create(image_url: "https://i.pinimg.com/originals/5b/35/23/5b352345b6b65ff197149b2035e2cde5.jpg", name: "Bodega Biarritz 1881 Tapas bar", address: "Carrer Nou de Sant Francesc, 7, Ciutat Vella, 08002 Barcelona, Espagne", phone_number: "+34618677927", country: "spain")
Restaurant.create(image_url: "https://www.trull-boadella.com/FitxersWeb/1526/10.jpg", name: "El Trull d'en Francesc", address: "Placeta de l'Oli, 1, 17723 Boadella i les Escaules, Girona, Espagne", phone_number: "+34972569027", country: "spain")
Restaurant.create(image_url: "https://poloconghaile.com/wp-content/uploads/2013/07/ARZAK-L5.2-1500x939.jpg", name: "Restaurant Arzak", address: "Alcalde José Elosegi Hiribidea, 273, 20015 Donostia, Gipuzkoa, Espagne", phone_number: "+34943278465", country: "spain")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/12/b8/89/e6/20180422-163919-largejpg.jpg", name: "La Paella de la Reina", address: "Calle de la Reina, 39, Centro, 28004 Madrid, Espagne", phone_number: "+34915311885", country: "spain")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/13/87/8f/61/img-ced4c043ccc001d3e3b42fc787.jpg", name: "Can Solé", address: "Calle de Sant Carles, 4, Ciutat Vella, 08003 Barcelona, Espagne", phone_number: "+34932215012", country: "spain")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/07/4a/35/5d/restaurante-lasarte.jpg", name: "Lasarte", address: "Carrer de Mallorca, 259, L'Eixample, 08008 Barcelona, Espagne", phone_number: "+34934453242", country: "spain")
Restaurant.create(image_url: "https://tiplr.com/wp-content/uploads/2019/07/6852749421_0fefa620f8_b.jpg", name: "Restaurante La Catedral", address: "Carrera de San Jerónimo, 16, Centro, 28014 Madrid, Espagne", phone_number: "+34915233556", country: "spain")
Restaurant.create(image_url: "https://media.cntraveler.com/photos/5a8c4b48a2fdaf4c74bb6079/16:9/w_2560,c_limit/Disfrutar__2018_DISFRUTAR---Sala-Blanca---@Adria%CC%80-Goula.jpg", name: "Disfrutar", address: "Calle de Villarroel, 163, L'Eixample, 08036 Barcelona, Espagne", phone_number: "+34933486896", country: "spain")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/08/8b/56/3e/taberna-el-sur.jpg", name: "Taberna El Sur", address: "Calle de la Torrecilla del Leal, 12, Centro, 28012 Madrid, Espagne", phone_number: "+34915278340", country: "spain")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/0b/55/11/de/bocam.jpg", name: "Bocam", address: "Carrer de la Jonquera, 18, 17600 Figueres, Girona, Espagne", phone_number: "+34972539494", country: "spain")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/24/4b/38/87/comedor.jpg", name: "Casa Benigna", address: "Calle de Benigno Soto, 9, Chamartín, 28002 Madrid, Espagne", phone_number: "+34914133356", country: "spain")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/07/67/be/67/taps-bar.jpg", name: "TAPS Bar", address: "Carrer de la Mare de Déu del Remei, 53, Sants-Montjuïc, 08004 Barcelona, Espagne", phone_number: "+34936258066", country: "spain")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/1c/62/f7/b8/ibienvenidos-a-la-nueva.jpg", name: "Restaurante La Taurina", address: "Carrera de San Jerónimo, 5, Centro, 28014 Madrid, Espagne", phone_number: "+34915313969", country: "spain")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/0b/81/9f/80/detalle-de-la-sala.jpg", name: "Restaurante Lakasa", address: "Plaza del Descubridor Diego de Ordás, 1, Chamberí, 28003 Madrid, Espagne", phone_number: "+34915338715", country: "spain")
Restaurant.create(image_url: "https://aspoonfuloftlc.com/wp-content/uploads/2018/08/mas-al-sur.jpg", name: "Mas Al Sur", address: "Calle de Santa Isabel, 35, Centro, 28012 Madrid, Espagne", phone_number: "+34910249936", country: "spain")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/19/67/4b/be/entrada-restaurante.jpg", name: "Navarro", address: "Carrer de l'Arquebisbe Mayoral, 5, Ciutat Vella, 46002 València, Valencia, Espagne", phone_number: "+34963529623", country: "spain")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/1b/0e/d9/3c/interior-de-restaurante.jpg", name: "Coque", address: "Calle del Marqués del Riscal, 11, Chamberí, 28010 Madrid, Espagne", phone_number: "+34916040202", country: "spain")

# Italy
Restaurant.create(image_url: "https://www.ristorantiweb.com/wp-content/uploads/sites/9/2021/12/Sala1_casa_buono07_21_AR-copia.jpg", name: "Casa Buono", address: "Corso Cuneo, 28, 18039 Trucco IM, Italie", phone_number: "+393405188538", country: "italy")
Restaurant.create(image_url: "https://media.abcsalles.com/images/1/salles/900h/547765/la-fourchette-or-11.jpg", name: "La Fourchette D'Or", address: "Via di San Martino Ai Monti, 40, 00184 Roma RM, Italie", phone_number: "+390648913153", country: "italy")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/08/10/16/ec/alle-fratte-di-trastevere.jpg", name: "Alle Fratte di Trastevere", address: "Via delle Fratte di Trastevere, 49/50, 00154 Roma RM, Italie", phone_number: "+39065835775", country: "italy")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/05/5b/0e/42/le-caveau.jpg", name: "Le Caveau Ristorante", address: "Via Conte Verde, 6, 00185 Roma RM, Italie", phone_number: "+39064464744", country: "italy")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/19/c3/ea/67/julie-s-restaurant.jpg", name: "Ristorante Julie's", address: "Via Palestro, 65, 00185 Roma RM, Italie", phone_number: "+390664871024", country: "italy")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/01/f1/32/0a/la-terrasse.jpg", name: "Le Tavernelle", address: "Via Panisperna, 48, 00184 Roma RM, Italie", phone_number: "+39064740724", country: "italy")
Restaurant.create(image_url: "https://res.cloudinary.com/tf-lab/image/upload/restaurant/ad726898-4e3b-4f54-b3b2-2bd32e7ed819/a227a02c-2185-41e8-a3cd-b19b36f3b188.jpg", name: "La Panetteria Ristorante", address: "Via della Panetteria, 13a/14, 00187 Roma RM, Italie", phone_number: "+39066785595", country: "italy")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/16/39/da/b0/photo0jpg.jpg", name: "Divinostilia food&winebar", address: "Via Ostilia, 4, 00184 Roma RM, Italie", phone_number: "+390670496526", country: "italy")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/22/a7/3f/8a/benvenuti.jpg", name: "Ristorante la Nuova Piazzetta", address: "Via del Buon Consiglio, 23/a, 00184 Roma RM, Italie", phone_number: "+39066991640", country: "italy")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/0a/12/33/fa/la-taverna-italiana.jpg", name: "Taverna Italiana", address: "Viale Manzoni, 107, 00185 Roma RM, Italie", phone_number: "+390677200413", country: "italy")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/26/98/56/38/sala-principale.jpg", name: "Massimo's Al 39", address: "Via Palestro, 39/a 41/a, 00185 Roma RM, Italie", phone_number: "+39064441213", country: "italy")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/02/63/54/ce/hostaria-isidoro-dining.jpg", name: "Hostaria Isidoro", address: "Via di San Giovanni in Laterano, 59/A, 00184 Roma RM, Italie", phone_number: "+39067008266", country: "italy")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/1b/99/ff/1e/sala.jpg", name: "Ristorante Al Viminale", address: "Via Palermo, 46, Piazza del Viminale, 3-4, 00184 Roma RM, Italie", phone_number: "+390686672597", country: "italy")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/1d/bf/e9/ac/le-pizze-di-oggi.jpg", name: "La Cucina Nazionale", address: "Via Nazionale, 3, 00184 Roma RM, Italie", phone_number: "+3906484452", country: "italy")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/17/09/11/ba/56d9478c0a4f3856106083.jpg", name: "Diadema Restaurant", address: "Via Palermo, 31, 00184 Roma RM, Italie", phone_number: "+390689610246", country: "italy")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/11/e7/cd/76/ristorante-cotto.jpg", name: "Cotto Restaurant", address: "Via Torino, 124, 00184 Roma RM, Italie", phone_number: "+390683511947", country: "italy")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/1a/4a/8c/73/img-20191214-142251-largejpg.jpg", name: "La Bruschetta", address: "Via Sardegna, 39, 00187 Roma RM, Italie", phone_number: "+390642013721", country: "italy")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/19/78/78/61/restaurant-ce-stamo-a.jpg", name: "Ce Stamo A Pensà", address: "Via Leonina, 81, 00184 Roma RM, Italie", phone_number: "+390669363154", country: "italy")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/02/73/02/3a/filename-cimg1327-jpg.jpg", name: "Il Bocconcino", address: "Via Ostilia, 23, 00184 Roma RM, Italie", phone_number: "+390677079175", country: "italy")
Restaurant.create(image_url: "https://media-cdn.tripadvisor.com/media/photo-s/18/d3/e4/c8/photo1jpg.jpg", name: "Il Brigantino", address: "Via di San Martino Ai Monti, 50, 00184 Roma RM, Italie", phone_number: "+39064745074", country: "italy")

# Recipes and Ingredients
countries = ["france", "spain", "italy"]
countries.each do |country|
  url = "https://www.whats4eats.com/europe/#{country}-cuisine"

  html_file = URI.open(url).read
  html_doc = Nokogiri::HTML.parse(html_file)

  html_doc.search(".node-recipe div h2 a").each do |element|
    path =  element.attribute("href").value
    url_2 = "https://www.whats4eats.com#{path}"
    html_file_2 = URI.open(url_2).read
    html_doc_2 = Nokogiri::HTML.parse(html_file_2)

    name = html_doc_2.search("h1").text.strip
    description = html_doc_2.search("#method ol").text
    image_url = html_doc_2.search("img")[1].values[1]
    recipe = Recipe.create!(name:, description:, country:, image_url:)
    # puts "created recipe : #{recipe.name}"
    # puts "image_url"

    html_doc_2.search('#ingredients ul').each do |li|
      li.text.strip.split("\n").each { |i| Ingredient.create!(name: i, recipe:) }
    end
  end
end

puts "#{Recipe.count} recipes created"
puts "#{Ingredient.count} ingredients created"
puts "#{User.count} users created"
puts "#{Restaurant.count} restaurants created"
puts 'Recipes seeded successfully!'

#reviews
RestaurantReview.create(title: "good", comment: "really nice restaurant", restaurant_id: 31, user_id: user2)
