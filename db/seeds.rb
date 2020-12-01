# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require "open-uri"

file = URI.open('https://images.unsplash.com/photo-1601302683431-0113e9a05d09?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxfDB8MXxyYW5kb218fHx8fHx8fA&ixlib=rb-1.2.1&q=80&w=1080')

puts 'Destroying fish(es)...'

Fish.destroy_all

puts 'Generating new and improved fish...'

10.times do
  name = Faker::GreekPhilosophers.name
  description = "#{Faker::Demographic.marital_status} #{Faker::Demographic.sex} #{Faker::Demographic.demonym} fish. #{Faker::Demographic.height(unit: :imperial)}"
  location = Faker::Address.city
  price = "#{rand(1..10)} €"
  fish = Fish.new(name: name, description: description, location: location, price: price)
  fish.photo.attach(io: file, filename: 'fish.png', content_type: 'image/png')
  fish.save
end

puts 'Finished :)'




