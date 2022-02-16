# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "Destroy all restaurants......."

Restaurant.destroy_all

puts "Start seeding......"
5.times {
  restaurant = Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.cell_phone, category: %w[chinese italian japanese french belgian].sample )
  if restaurant.persisted?
      rand(1..10).times do
        restaurant.reviews.create(content: Faker::Lorem.sentence, rating: rand(0..5))
      end
    end
  puts "Creating 1 restaurant........"
}

puts "Start review....."

puts "Seeding good........."
