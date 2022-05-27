# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Destroying all goats"
Goat.destroy_all
puts "Destroying all users"
User.destroy_all

user = User.new(email: "test@gmail.com", password: "123456")
user.save!

goat_image_url = URI.open("https://images.unsplash.com/photo-1610751298235-995000e91967?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1729&q=80")
goat = Goat.new(
  name: "Beeehty",
  city: "Hennigsdorf",
  breed: "Fainting Goat",
  gender: "Female",
  description: "Beeeehty is a therapy goat registered with the American Fainting Goat Organization, who strongly believes the Fainting goat breed is a multi-purpose breed. Therapy goats need to be friendly and enjoy human contact. They should be well behaved in public, and Beeeehty is the most well-behaved goat.",
  price: 453,
  goattype: "Service Goat",
  user: user
)
goat.photo.attach(io: goat_image_url, filename: "goat1.jpg", content_type: "image/jpg")
goat.save!

goat2_image_url = URI.open("https://images.unsplash.com/photo-1530717385694-f05b16123c4a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1768&q=80")
goat2 = Goat.new(
  name: "Rosaline",
  city: "Berlin",
  breed: "White Russian",
  gender: "Female",
  description: "Rosaline is a calm and friendly goat with a strange habit of eating people's socks",
  price: 150,
  goattype: "Party Goat",
  user: user
)
goat2.photo.attach(io: goat2_image_url, filename: "goat1.jpg", content_type: "image/jpg")
goat2.save!

goat3_image_url = URI.open("https://images.unsplash.com/photo-1550142390-d9df41784d1f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
goat3 = Goat.new(
  name: "Pats",
  city: "Durham",
  breed: "English Goofy",
  gender: "Male",
  description: "This goat can be often encountered if you enter a bar slurping a pint. Pats is also a great companion for yoga sessions at the park.",
  price: 50,
  goattype: "Yoga Goat",
  user: user
)
goat3.photo.attach(io: goat3_image_url, filename: "goat2.jpg", content_type: "image/jpg")
goat3.save!

goat4_image_url = URI.open("https://images.unsplash.com/photo-1531844433520-e9ad31be6ffd?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770")
goat4 = Goat.new(
  name: "Slippin Jimmy",
  city: "Tennese",
  breed: "Canadian Walgroove",
  gender: "Male",
  description: "A hard negotiating partner who has seen stuff on the streets beyond your imagination. It does anything you can imagine.",
  price: 230,
  goattype: "Professional Cuddler",
  user: user
)
goat4.photo.attach(io: goat4_image_url, filename: "goat3.jpg", content_type: "image/jpg")
goat4.save!

goat5_image_url = URI.open("https://images.unsplash.com/photo-1444055091112-be9ccd4e84e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80")
goat5 = Goat.new(
  name: "Gottfried",
  city: "Munich",
  breed: "German Wooly",
  gender: "Non-binary",
  description: "The simple goat for simple occasions. Play with it, take it for a walk. YOu can't do anything wrong with it.",
  price: 200,
  goattype: "Lawn Mower",
  user: user
)
goat5.photo.attach(io: goat5_image_url, filename: "goat4.jpg", content_type: "image/jpg")
goat5.save!

puts "Seeding finished. Created 4 Goats"
