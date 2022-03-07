# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Article.destroy_all
User.destroy_all

User.create(email: "Lucas@exemple.com", password: "123456")

10.times do
  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end

20.times do
  Article.create(
    title: Faker::GreekPhilosophers.quote,
    price: Faker::Number.number(digits: 03),
    description: Faker::Lorem.sentence(word_count: 15),
    user: User.all.sample
  )
end

puts 'Le seed est FAIT'