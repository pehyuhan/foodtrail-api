# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb
# seed 50 records
50.times do
  list = List.create(title: Faker::Lorem.word, created_by: User.first.id)
  list.items.create(name: Faker::Lorem.word, location: Faker::Lorem.word, postal_code: Faker::Number.number(6))
end
