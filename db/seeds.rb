# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all

50.times do |index|
  Product.create([{
  name: Faker::Food.ingredient,
  cost: Faker::Number.digit,
  origin: Faker::Address.country,

  :reviews_attributes =>
  [
    {author: Faker::Name.unique.name,
    content: Faker::Lorem.characters(50...250),
    rating: Faker::Number.between(1, 5)},

    {author: Faker::Name.unique.name,
    content: Faker::Lorem.characters(50...250),
    rating: Faker::Number.between(1, 5)},

    {author: Faker::Name.unique.name,
    content: Faker::Lorem.characters(50...250),
    rating: Faker::Number.between(1, 5)},

    {author: Faker::Name.unique.name,
    content: Faker::Lorem.characters(50...250),
    rating: Faker::Number.between(1, 5)}
  ]
  }])
end

10.times do |index|
  Product.create([{
  name: Faker::Food.ingredient,
  cost: Faker::Number.digit,
  origin: "USA",

  :reviews_attributes =>
  [
    {author: Faker::Name.unique.name,
    content: Faker::Lorem.characters(50...250),
    rating: Faker::Number.between(1, 5)},

    {author: Faker::Name.unique.name,
    content: Faker::Lorem.characters(50...250),
    rating: Faker::Number.between(1, 5)}
  ]
  }])
end


p "Created #{Product.count} products"
