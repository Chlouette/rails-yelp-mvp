# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning DB..."
Restaurant.destroy_all

puts "Creating restaurants..."
pizza_east = { name: "Pizza East", address: "Shoreditch High St - London", category: "italian" }
emilias = { name: "Emilia's Pasta", address: "St Katharine's Docks - London", category: "italian" }
sushi_samba = { name: "Sushi Samba", address: "Salesforce Tower - London", category: "japanese" }
duck_and_waffle = { name: "Duck and Waffle", address: "Bishopsgate - London", category: "belgian" }
la_petite_auberge = { name: "La Petite Auberge", address: "Upper St - London", category: "french" }

[ pizza_east, emilias, sushi_samba, duck_and_waffle, la_petite_auberge ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

