# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.new(email: "hello@gmail.com", password: "123456")
user.save!

goat = Goat.new(
  name: "Rosaline",
  city: "Berlin",
  breed: "white russian",
  gender: "female",
  description: "Calm and friendly goat with a strange habit of eating people's socks",
  image_url: "https://i.ytimg.com/vi/iexD77FAdJw/maxresdefault.jpg",
  price: 150,
  goattype: "party",
  user: user
)
goat.save!

goat2 = Goat.new(
  name: "Pats",
  city: "Durham",
  breed: "English Goofy",
  gender: "Male",
  description: "This goat can be often encountered if you enter a bar slurping a pint",
  image_url: "https://numpaint.com/wp-content/uploads/2020/08/Classy-Goat-drinking-Juice-paint-by-numbers.jpg",
  price: 50,
  goattype: "yoga",
  user: user
)
goat2.save!

goat3 = Goat.new(
  name: "Slippin Jimmy",
  city: "Tennese",
  breed: "Canadian Walgroove",
  gender: "Nonbinary",
  description: "A hard negotiating partner who has seen stuff on the streets beyond your imagination. It does anything you can imagine",
  image_url: "https://sm.ign.com/t/ign_de/news/k/kojima-add/kojima-added-to-goat-simulator-credits_y13y.h720.jpg",
  price: 230,
  goattype: "cuddle",
  user: user
)
goat3.save!

goat4 = Goat.new(
  name: "Gottfried",
  city: "Munich",
  breed: "German Wooly",
  gender: "Male",
  description: "The simple goat for simple occasions. Play with it, take it for a walk. YOu can't do anything wrong with it",
  image_url: "https://live.staticflickr.com/3423/3185293955_513dfd1420_b.jpg",
  price: 20,
  goattype: "Lawn-Mower",
  user: user
)
goat4.save!

puts "Seeding finished"
