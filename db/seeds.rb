# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


room1 = ShowRoom.create(num_of_seats: 150)
room2 = ShowRoom.create(num_of_seats: 150)
room3 = ShowRoom.create(num_of_seats: 150)
room4 = ShowRoom.create(num_of_seats: 150)
room5 = ShowRoom.create(num_of_seats: 150)

puts "it has been seeded "