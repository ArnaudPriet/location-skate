# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Chatroom.destroy_all
Renting.destroy_all
Skate.destroy_all
User.destroy_all
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
anna = User.create(name: 'Anna', nickname: "nana", email: 'anna@lewagon.com', password: '123456')
arnaud = User.create(name: 'Arnaud', nickname: "nono", email: 'arnaud@lewagon.com', password: '123456')
chris = User.create(name: 'Chris', nickname: "cricri", email: 'chris@lewagon.com', password: '123456')
genevieve = User.create(name: 'Genevieve', nickname: "gigi", email: 'genevieve@lewagon.com', password:'123456')

skate1 = Skate.create(name: 'fusion', description: 'anna@lewagon.com', price: 12.34)
skate2 = Skate.create(name: 'atom', description: 'arnaud@lewagon.com', price: 1.23)
skate3 = Skate.create(name: 'lune', description: 'chris@lewagon.com', price: 123.45)
skate4 = Skate.create(name: 'soleil', description: 'genevieve@lewagon.com', price: 12_345)

renting1 = Renting.create(date: '08/09/21', user: anna, skate: skate1)
renting2 = Renting.create(date: '09/12/21', user: arnaud, skate: skate3)

Chatroom.create!(name: "général")
