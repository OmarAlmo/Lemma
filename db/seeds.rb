# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Countries and Cities 
require 'csv'

puts "Importing countries and cities..."
CSV.foreach(Rails.root.join("app/assets/csv/countries_and_cities.csv"), headers: true) do |row|
  country = Country.find_or_create_by(name: row[0])
  City.create(name: row[1], country: country)
end
puts "Importing countries and cities completed."

puts "Importing categories"
CSV.foreach(Rails.root.join("app/assets/csv/categories.csv"), headers: true) do |row|
  Category.create(name: row[0])
end 
puts "Importing categories completed."
