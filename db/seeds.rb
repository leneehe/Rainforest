# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Product.create!(name: "Dog toy", description: "A fun chewy toy for your puppy", price: 1000)
Product.create!(name: "Cat toy", description: "A fun chewy toy for your kitten", price: 750)
Product.create!(name: "Headphones", description: "Listen to your music with these cool headphones", price: 20000)
Product.create!(name: "Soccer ball", description: "Have hours of fun with this soccer ball!", price: 2000)

Review.destroy_all
Review.create!(comment:"This is a product review", product_id: 1)
Review.create!(comment:"This is also a product review", product_id: 1)
Review.create!(comment:"Best product ever!", product_id: 2)
Review.create!(comment:"It isn't worth it.", product_id: 2)
