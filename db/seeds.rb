# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Countries and Cities 
require 'csv'

puts "Importing countries..."
CSV.foreach(Rails.root.join("app/assets/csv/countries.csv"), headers: true) do |row|
  Country.create do |country|
    country.name = row[0]
  end
end
puts "Importing countries completed."

puts "Importing cities..."
CSV.foreach(Rails.root.join("app/assets/csv/cities.csv"), headers: true) do |row|
  City.create do |city|
    city.name = row[0]
  end
end
puts "Importing cities completed."


