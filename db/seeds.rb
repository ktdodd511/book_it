# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#
Category.destroy_all


Category.create(name: "Fantasy")
Category.create(name: "Science Fiction")
Category.create(name: "Romance")
Category.create(name: "Satire")
Category.create(name: "Action and Adventure")
Category.create(name: "Mystery")
Category.create(name: "Technology")
Category.create(name: "Self Help")
Category.create(name: "Horror")
