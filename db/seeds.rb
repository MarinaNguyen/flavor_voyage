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
Restaurant.create(name: "L'Oustau de Baumanière", address: "515 Rte DE BAUMANIERE, 13520 Les Baux-de-Provence", phone_number: "04 90 54 33 07", country: "france")
Restaurant.create(name: "Le Petit Nice Passedat", address: "17 Rue des Braves Anse de Maldormé, 156 Cor Président John Fitzgerald Kennedy, 13007 Marseille", phone_number: "04 91 59 25 92", country: "france")
Restaurant.create(name: "AM par Alexandre Mazzia", address: "9 Rue François Rocca, 13008 Marseille", phone_number: "04 91 24 83 63", country: "france")
Restaurant.create(name: "Le Louis XV - Alain Ducasse à l'Hôtel de Paris", address: "Place du Casino, 98000 Monaco", phone_number: "+377 98 06 88 64", country: "france")
Restaurant.create(name: "Mirazur", address: "30 Av. Aristide Briand, 06500 Menton", phone_number: "04 92 41 86 86", country: "france")
Restaurant.create(name: "La Vague d'Or", address: "Plage de la Bouillabaisse, 83990 Saint-Tropez", phone_number: "04 94 55 91 00", country: "france")
Restaurant.create(name: "La Dame de Pic", address: "20 Rue du Louvre, 75001 Paris", phone_number: "01 42 60 40 40", country: "france")
Restaurant.create(name: "Troisgros", address: "728 Rte de Villerest, 42155 Ouches", phone_number: "04 77 71 66 97", country: "france")
Restaurant.create(name: "Le Suquet - Sebastien Bras", address: "Route de Laguiole, 12210 Laguiole", phone_number: "05 65 51 18 20", country: "france")
Restaurant.create(name: "La Marine", address: "3 Rue Marie Lemonnier, 85330 Noirmoutier-en-l'Île", phone_number: "02 51 39 23 09", country: "france")
Restaurant.create(name: "Le Coquillage", address: "Le Buot, 35350 Saint-Méloir-des-Ondes", phone_number: "02 99 89 64 76", country: "france")
Restaurant.create(name: "La Grenouillère", address: "19 Rue de la Grenouillère, 62170 La Madelaine-sous-Montreuil", phone_number: "03 21 06 07 22", country: "france")
Restaurant.create(name: "Restaurant Pierre Gagnaire", address: "6 Rue Balzac, 75008 Paris", phone_number: "01 58 36 12 50", country: "france")
Restaurant.create(name: "Alléno Paris", address: "8 Av. Dutuit, 75008 Paris", phone_number: "01 53 05 10 00", country: "france")
Restaurant.create(name: "Le Clarence", address: "31 Av. Franklin Delano Roosevelt, 75008 Paris", phone_number: "01 82 82 10 10", country: "france")
Restaurant.create(name: "Le Lauracée - Restaurant Marseille", address: "96 Rue Grignan, 13001 Marseille", phone_number: "0491336336", country: "france")
Restaurant.create(name: "Restaurant Les Arcenaulx Marseille Vieux Port", address: "25 Cr Honoré d'Estienne d'Orves, 13001 Marseille", phone_number: "0491598030", country: "france")
Restaurant.create(name: "L'Escapade Marseillaise", address: "134 Rue Paradis, 13006 Marseille", phone_number: "0491316169", country: "france")
Restaurant.create(name: "Restaurant Saisons", address: "8 Rue Sainte-Victoire, 13006 Marseille", phone_number: "0951891838", country: "france")
Restaurant.create(name: "Chez Nous", address: "22 Pl. Notre Dame du Mont, 13006 Marseille", phone_number: "0491376624", country: "france")

# Spain
Restaurant.create(name: "Els Fogons De Canadal", address: "Diseminado Afores, 77, 17709 La Jonquera, Girona, Espagne", phone_number: "+34634849731", country: "spain")
Restaurant.create(name: "La Mi Venta", address: "Pl. de la Marina Española, 7, Centro, 28013 Madrid, Espagne", phone_number: "+34915595091", country: "spain")
Restaurant.create(name: "El Celler de Can Roca", address: "Carrer de Can Sunyer, 48, 17007 Girona, Espagne", phone_number: "+34972222157", country: "spain")
Restaurant.create(name: "Bodega Biarritz 1881 Tapas bar", address: "Carrer Nou de Sant Francesc, 7, Ciutat Vella, 08002 Barcelona, Espagne", phone_number: "+34618677927", country: "spain")
Restaurant.create(name: "El Trull d'en Francesc", address: "Placeta de l'Oli, 1, 17723 Boadella i les Escaules, Girona, Espagne", phone_number: "+34972569027", country: "spain")
Restaurant.create(name: "Restaurant Arzak", address: "Alcalde J. Elosegi Hiribidea, 273, 20015 Donostia, Gipuzkoa, Espagne", phone_number: "+34943278465", country: "spain")
Restaurant.create(name: "La Paella de la Reina", address: "C. de la Reina, 39, Centro, 28004 Madrid, Espagne", phone_number: "+34915311885", country: "spain")
Restaurant.create(name: "Can Solé", address: "C. de Sant Carles, 4, Ciutat Vella, 08003 Barcelona, Espagne", phone_number: "+34932215012", country: "spain")
Restaurant.create(name: "Lasarte", address: "C/ de Mallorca, 259, L'Eixample, 08008 Barcelona, Espagne", phone_number: "+34934453242", country: "spain")
Restaurant.create(name: "Restaurante La Catedral", address: "Cra de S. Jerónimo, 16, Centro, 28014 Madrid, Espagne", phone_number: "+34915233556", country: "spain")
Restaurant.create(name: "Disfrutar", address: "C. de Villarroel, 163, L'Eixample, 08036 Barcelona, Espagne", phone_number: "+34933486896", country: "spain")
Restaurant.create(name: "Taberna El Sur", address: "C. de la Torrecilla del Leal, 12, Centro, 28012 Madrid, Espagne", phone_number: "+34915278340", country: "spain")
Restaurant.create(name: "Bocam", address: "Carrer de la Jonquera, 18, 17600 Figueres, Girona, Espagne", phone_number: "+34972539494", country: "spain")
Restaurant.create(name: "Casa Benigna", address: "C. de Benigno Soto, 9, Chamartín, 28002 Madrid, Espagne", phone_number: "+34914133356", country: "spain")
Restaurant.create(name: "TAPS Bar", address: "Carrer de la Mare de Déu del Remei, 53, Sants-Montjuïc, 08004 Barcelona, Espagne", phone_number: "+34936258066", country: "spain")
Restaurant.create(name: "Restaurante La Taurina", address: "Cra de S. Jerónimo, 5, Centro, 28014 Madrid, Espagne", phone_number: "+34915313969", country: "spain")
Restaurant.create(name: "Restaurante Lakasa", address: "Pl. del Descubridor Diego de Ordás, 1, Chamberí, 28003 Madrid, Espagne", phone_number: "+34915338715", country: "spain")
Restaurant.create(name: "Mas Al Sur", address: "C. de Sta. Isabel, 35, Centro, 28012 Madrid, Espagne", phone_number: "+34910249936", country: "spain")
Restaurant.create(name: "Navarro", address: "C/ de l'Arquebisbe Mayoral, 5, Ciutat Vella, 46002 València, Valencia, Espagne", phone_number: "+34963529623", country: "spain")
Restaurant.create(name: "Coque", address: "C. del Marqués del Riscal, 11, Chamberí, 28010 Madrid, Espagne", phone_number: "+34916040202", country: "spain")

# Italy
Restaurant.create(name: "Casa Buono", address: "Corso Cuneo, 28, 18039 Trucco IM, Italie", phone_number: "+393405188538", country: "italy")
Restaurant.create(name: "La Fourchette D'Or", address: "Via di S. Martino Ai Monti, 40, 00184 Roma RM, Italie", phone_number: "+390648913153", country: "italy")
Restaurant.create(name: "Alle Fratte di Trastevere", address: "Via delle Fratte di Trastevere, 49/50, 00154 Roma RM, Italie", phone_number: "+39065835775", country: "italy")
Restaurant.create(name: "Le Caveau Ristorante", address: "Via Conte Verde, 6, 00185 Roma RM, Italie", phone_number: "+39064464744", country: "italy")
Restaurant.create(name: "Ristorante Julie's", address: "Via Palestro, 65, 00185 Roma RM, Italie", phone_number: "+390664871024", country: "italy")
Restaurant.create(name: "Le Tavernelle", address: "Via Panisperna, 48, 00184 Roma RM, Italie", phone_number: "+39064740724", country: "italy")
Restaurant.create(name: "La Panetteria Ristorante", address: "Via della Panetteria, 13a/14, 00187 Roma RM, Italie", phone_number: "+39066785595", country: "italy")
Restaurant.create(name: "Divinostilia food&winebar", address: "Via Ostilia, 4, 00184 Roma RM, Italie", phone_number: "+390670496526", country: "italy")
Restaurant.create(name: "Ristorante la Nuova Piazzetta", address: "Via del Buon Consiglio, 23/a, 00184 Roma RM, Italie", phone_number: "+39066991640", country: "italy")
Restaurant.create(name: "Taverna Italiana", address: "Viale Manzoni, 107, 00185 Roma RM, Italie", phone_number: "+390677200413", country: "italy")
Restaurant.create(name: "Massimo's Al 39 Restaurant", address: "Via Palestro, 39/a 41/a, 00185 Roma RM, Italie", phone_number: "+39064441213", country: "italy")
Restaurant.create(name: "Hostaria Isidoro", address: "Via di S. Giovanni in Laterano, 59/A, 00184 Roma RM, Italie", phone_number: "+39067008266", country: "italy")
Restaurant.create(name: "Ristorante Al Viminale", address: "Via Palermo, 46, Piazza del Viminale, 3-4, 00184 Roma RM, Italie", phone_number: "+390686672597", country: "italy")
Restaurant.create(name: "Ristorante Pizzeria La Cucina Nazionale", address: "Via Nazionale, 3, 00184 Roma RM, Italie", phone_number: "+3906484452", country: "italy")
Restaurant.create(name: "Diadema Restaurant", address: "Via Palermo, 31, 00184 Roma RM, Italie", phone_number: "+390689610246", country: "italy")
Restaurant.create(name: "Cotto Restaurant", address: "Via Torino, 124, 00184 Roma RM, Italie", phone_number: "+390683511947", country: "italy")
Restaurant.create(name: "Restaurant La Bruschetta", address: "Via Sardegna, 39, 00187 Roma RM, Italie", phone_number: "+390642013721", country: "italy")
Restaurant.create(name: "Ce Stamo A Pensà", address: "Via Leonina, 81, 00184 Roma RM, Italie", phone_number: "+390669363154", country: "italy")
Restaurant.create(name: "Il Bocconcino", address: "Via Ostilia, 23, 00184 Roma RM, Italie", phone_number: "+390677079175", country: "italy")
Restaurant.create(name: "Il Brigantino", address: "Via di S. Martino Ai Monti, 50, 00184 Roma RM, Italie", phone_number: "+39064745074", country: "italy")

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
    recipe = Recipe.create!(name:, description:, country: country)
    # puts "created recipe : #{recipe.name}"

    html_doc_2.search('#ingredients ul').each do |li|
      li.text.strip.split("\n").each { |i| Ingredient.create!(name: i, recipe:) }
    end
  end
end

puts "#{Recipe.count} recipes created"
puts "#{Ingredient.count} ingredients created"
puts 'Recipes seeded successfully!'
