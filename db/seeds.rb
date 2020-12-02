# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require "open-uri"

puts 'Flushing old fish down the toilet...'

Fish.destroy_all

puts 'Rehoming old users...'

User.destroy_all

puts 'Conceiving new users...'
users = []

puts 'Creating user 1...'

user1 = User.create!(email: '111@gmail.com', password: '123456')
users << user1

puts 'Creating user 2...'

user2 = User.create!(email: '222@gmail.com', password: '123456')
users << user2

puts 'Creating user 3...'

user3 = User.create!(email: '333@gmail.com', password: '123456')
users << user3

puts 'Creating user 4...'

user4 = User.create!(email: '444@gmail.com', password: '123456')
users << user4

puts 'We have shiny new users!'



puts 'Generating new and improved fish...'

25.times do
  file = URI.open('https://source.unsplash.com/featured/?fish')
  name = Faker::Creature::Cat.name
  description = "#{Faker::Demographic.marital_status} #{Faker::Demographic.sex} #{Faker::Demographic.demonym} fish. #{Faker::Demographic.height(unit: :imperial)}"
  location = Faker::Address.city
  price = "#{rand(1..10)} €"
  specie = Faker::GreekPhilosophers.name
  user = users.sample
  fish = Fish.new(name: name, description: description, location: location, price: price, specie: specie, user: user)
  fish.photo.attach(io: file, filename: 'fish.png', content_type: 'image/png')
  fish.save
  puts "#{name} successfully created"
end

puts 'Finished :)'




