# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#
# Book.destroy_all
#
#
# 100.times do
#   Book.create(
#     title: FFaker::Book.title,
#     author: FFaker::Book.author,
#     genre: FFaker::Book.genre,
#     description: FFaker::Book.description,
#     date_published: FFaker::Time.date
#     )
#   end

Category.create(name: "Fantasy")
Category.create(name: "Science Fiction")
Category.create(name: "Romance")
Category.create(name: "Satire")
Category.create(name: "Action and Adventure")
Category.create(name: "Mystery")
Category.create(name: "Technology")
Category.create(name: "Self Help")
Category.create(name: "Horror")
