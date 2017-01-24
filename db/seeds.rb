# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Book.destroy.all


100.times do |i|
  Book.create(
    title: FFaker::Book.title,
    author: FFaker::Book.author,
    genre: FFaker::Book.genre,
    description: FFaker::Book.description,
    date_published: FFaker::Time.date
    )
  end
