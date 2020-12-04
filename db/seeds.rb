# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require "open-uri"

puts "Destroying all the bookings..."
Booking.destroy_all

puts 'Flushing old fish down the toilet...'

Fish.destroy_all

puts 'Rehoming old users...'

User.destroy_all

puts 'Conceiving new users...'
users = []

puts 'Creating user 1...'

user1 = User.create!(email: 'Leo@gmail.com', password: '123456')
#leophoto = URI.open("https://avatars1.githubusercontent.com/u/68252652?s=400&u=4495b6b46f3e98d6867dabb8269f0d1a944c775e&v=4")
#user1.photo.attach(io: leophoto, filename: 'leophoto.png', content_type: 'image/png')
users << user1

puts 'Creating user 2...'

user2 = User.create!(email: 'Athi@gmail.com', password: '123456')
#athiphoto = URI.open("https://avatars1.githubusercontent.com/u/68252652?s=400&u=4495b6b46f3e98d6867dabb8269f0d1a944c775e&v=4")
#user2.photo.attach(io: athiphoto, filename: 'athiphoto.png', content_type: 'image/png')
users << user2

puts 'Creating user 3...'

user3 = User.create!(email: 'Renan@gmail.com', password: '123456')
#renanphoto = URI.open("https://avatars1.githubusercontent.com/u/68252652?s=400&u=4495b6b46f3e98d6867dabb8269f0d1a944c775e&v=4")
#user3.photo.attach(io: renanphoto, filename: 'renanphoto.png', content_type: 'image/png')
users << user3

puts 'Creating user 4...'

user4 = User.create!(email: 'Alvaro@gmail.com', password: '123456')
#alvarophoto = URI.open("https://avatars1.githubusercontent.com/u/69932838?s=400&u=f72e996c5e2b7c8f35880bd2eab1d623b90c1a97&v=4")
#user4.photo.attach(io: alvarophoto, filename: 'alvarophoto.png', content_type: 'image/png')
users << user4

user5 = User.create!(email: 'Cami@gmail.com', password: '123456')
#camiphoto = URI.open("https://avatars1.githubusercontent.com/u/68252652?s=400&u=4495b6b46f3e98d6867dabb8269f0d1a944c775e&v=4")
#user5.photo.attach(io: camiphoto, filename: 'camiphoto.png', content_type: 'image/png')
users << user5

puts 'Creating user 5...'

puts 'We have shiny new users!'



puts 'Generating new and improved fish...'

# 25.times do
#   file = URI.open('https://source.unsplash.com/featured/?fish')
#   name = Faker::Creature::Cat.name
#   description = "#{Faker::Demographic.marital_status} #{Faker::Demographic.sex} #{Faker::Demographic.demonym} fish. #{Faker::Demographic.height(unit: :imperial)}"
#   location = Faker::Address.city
#   price = "#{rand(1..10)} €"
#   specie = Faker::GreekPhilosophers.name
#   user = users.sample
#   fish = Fish.new(name: name, description: description, location: location, price: price, specie: specie, user: user)
#   fish.photo.attach(io: file, filename: 'fish.png', content_type: 'image/png')
#   fish.save
#   puts "#{name} successfully created"
# end

file = URI.open('https://images.unsplash.com/photo-1537126051263-80a6188f274a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTM2fHxmaXNofGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
  name = "Nemo"
  description = "He love swimming and spend hours sleeping "
  location = "Ausias march 125"
  price = "#{rand(1..10)} €"
  specie = "Atlantic cod"
  user = user5 # no need to change this line
  fish1 = Fish.new(name: name, description: description, location: location, price: price, specie: specie, user: user)
  fish1.photo.attach(io: file, filename: 'fish1.png', content_type: 'image/png')
  fish1.save!
  puts "#{name} successfully created"



file = URI.open('https://images.unsplash.com/photo-1559717201-2879521b49f4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1951&q=80')
  name = "Tiburcio"
  description = "eats a lot and bit if you bother him"
  location = "Carl Av. 12"
  price = "#{rand(1..10)} €"
  specie = "Blenny"
  user = user5 # no need to change this line
  fish2 = Fish.new(name: name, description: description, location: location, price: price, specie: specie, user: user)
  fish2.photo.attach(io: file, filename: 'fish1.png', content_type: 'image/png')
  fish2.save!
  puts "#{name} successfully created"


file = URI.open('https://images.unsplash.com/photo-1590009617727-f0c214b36afc?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTUzfHxmaXNofGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
  name = "George"
  description = "He would prefer be swimming in the ocean not in a fishbowl"
  location = "Norma Av. 859"
  price = "#{rand(1..10)} €"
  specie = "Bigeye"
  user = user5 # no need to change this line
  fish3 = Fish.new(name: name, description: description, location: location, price: price, specie: specie, user: user)
  fish3.photo.attach(io: file, filename: 'fish1.png', content_type: 'image/png')
  fish3.save!
  puts "#{name} successfully created"


file = URI.open('https://images.unsplash.com/photo-1561286806-8546113391e4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1054&q=80')
  name = "Marilyn"
  description = "She hates his owner that's why she loves be adopted for a while"
  location = "Pasaig San Joan 90"
  price = "#{rand(1..10)} €"
  specie = "Barbel"
  user = user2 # no need to change this line
  fish4 = Fish.new(name: name, description: description, location: location, price: price, specie: specie, user: user)
  fish4.photo.attach(io: file, filename: 'fish1.png', content_type: 'image/png')
  fish4.save!
  puts "#{name} successfully created"


file = URI.open('https://images.unsplash.com/photo-1588160380620-7a01c6f25f48?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjM4fHxmaXNofGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
  name = "Marie"
  description = "Has the extrange ability of breathe out of the water"
  location = "Verneda 760"
  price = "#{rand(1..10)} €"
  specie = "Redhorse sucker"
  user = user2 # no need to change this line
  fish5 = Fish.new(name: name, description: description, location: location, price: price, specie: specie, user: user)
  fish5.photo.attach(io: file, filename: 'fish1.png', content_type: 'image/png')
  fish5.save!
  puts "#{name} successfully created"


file = URI.open('https://images.unsplash.com/photo-1531959870249-9f9b729efcf4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1926&q=80')
  name = "John"
  description = "Calm and lovely, time to time likes to eat surfers"
  location = "Arago 210"
  price = "#{rand(1..10)} €"
  specie = "Whitefish"
  user = user2 # no need to change this line
  fish6 = Fish.new(name: name, description: description, location: location, price: price, specie: specie, user: user)
  fish6.photo.attach(io: file, filename: 'fish1.png', content_type: 'image/png')
  fish6.save!
  puts "#{name} successfully created"


file = URI.open('https://images.unsplash.com/photo-1601545529671-eda205227204?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTY0fHxmaXNofGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
  name = "Marta"
  description = "Marta only likes vegetables for dinner"
  location = "Gran via 946"
  price = "#{rand(1..10)} €"
  specie = "Vimba"
  user = user3 # no need to change this line
  fish7 = Fish.new(name: name, description: description, location: location, price: price, specie: specie, user: user)
  fish7.photo.attach(io: file, filename: 'fish1.png', content_type: 'image/png')
  fish7.save!
  puts "#{name} successfully created"

file = URI.open('https://images.unsplash.com/photo-1545816250-e12bedba42ba?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1963&q=80')
  name = "Sandra"
  description = "Her favourite sport is water polo"
  location = "Av Diagonal 346"
  price = "#{rand(1..10)} €"
  specie = "Tope"
  user = user3 # no need to change this line
  fish8 = Fish.new(name: name, description: description, location: location, price: price, specie: specie, user: user)
  fish8.photo.attach(io: file, filename: 'fish1.png', content_type: 'image/png')
  fish8.save!
  puts "#{name} successfully created"


file = URI.open('https://images.unsplash.com/photo-1548058256-5f08a2bf4f98?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1952&q=80')
  name = "Brandon"
  description = "He likes fishing but his friends consider him a murderer"
  location = "Av del mar 6"
  price = "#{rand(1..10)} €"
  specie = "Tapetail"
  user = user3# no need to change this line
  fish9 = Fish.new(name: name, description: description, location: location, price: price, specie: specie, user: user)
  fish9.photo.attach(io: file, filename: 'fish1.png', content_type: 'image/png')
  fish9.save!
  puts "#{name} successfully created"


file = URI.open('https://images.unsplash.com/photo-1579718417786-049683d04b72?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
  name = "Leo"
  description = "Leo love swimming in warm water during sunny days"
  location = "Bilbao 6"
  price = "#{rand(1..10)} €"
  specie = "Oldwife"
  user = user4# no need to change this line
  fish10 = Fish.new(name: name, description: description, location: location, price: price, specie: specie, user: user)
  fish10.photo.attach(io: file, filename: 'fish1.png', content_type: 'image/png')
  fish10.save!
  puts "#{name} successfully created"

file = URI.open('https://images.unsplash.com/photo-1540252965826-e120cfb72bed?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzMyfHxmaXNofGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60')
  name = "Charles"
  description = "He would prefer to place the fishbowl near a TV because he loves watching action films "
  location = "New York 645"
  price = "#{rand(1..10)} €"
  specie = "Deep sea eel"
  user = user4 # no need to change this line
  fish11 = Fish.new(name: name, description: description, location: location, price: price, specie: specie, user: user)
  fish11.photo.attach(io: file, filename: 'fish1.png', content_type: 'image/png')
  fish11.save!
  puts "#{name} successfully created"

  file = URI.open('https://images.unsplash.com/photo-1551464664-222eeb2d2034?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=962&q=80')
  name = "Robert"
  description = "He love smoke cigarettes but, get frustrated since is quite complicated under the water"
  location = "Av Marina 645"
  price = "#{rand(1..10)} €"
  specie = "Guramis"
  user = user4# no need to change this line
  fish12 = Fish.new(name: name, description: description, location: location, price: price, specie: specie, user: user)
  fish12.photo.attach(io: file, filename: 'fish1.png', content_type: 'image/png')
  fish12.save!
  puts "#{name} successfully created"


puts "Creating bookings..."

puts "Creating booking number 1... "
booking = Booking.new(status: "pending", start_date:"2021-05-22", end_date:"2021-06-12", user: user3, fish: fish12)
booking.save!

puts "Creating booking number 2... "
booking = Booking.new(status: "pending", start_date:"2021-12-11", end_date:"2021-12-14", user: user2, fish: fish11)
booking.save!

puts "Creating booking number 3... "
booking = Booking.new(status: "pending", start_date:"2022-12-11", end_date:"2023-12-14", user: user4, fish: fish9)
booking.save!



puts "Creating booking number 4... "
booking = Booking.new(status: "pending", start_date:"2021-05-22", end_date:"2021-06-12", user: user4, fish: fish1)
booking.save!

puts "Creating booking number 5... "
booking = Booking.new(status: "pending", start_date:"2021-12-11", end_date:"2021-12-14", user: user2, fish: fish2)
booking.save!

puts "Creating booking number 6... "
booking = Booking.new(status: "pending", start_date:"2021-12-18", end_date:"2021-12-22", user: user5, fish: fish6)
booking.save!


puts "Booking finished"

puts 'Finished :)'







