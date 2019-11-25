# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


dogs = Dog.create(name: "Cooper", breed: "German Shorthaired Pointer", age: 4, color: "black", bio: "Adopted at 10 months, he has a happy home", adoptable: false)

dogs = Dog.create(name: "Riley", breed: "Black Lab", age: 6, color: "black", bio: "Loves food and sleeping", adoptable: false)

dogs = Dog.create(name: "Delli", breed: "Chocolate Lab", age: 2, color: "brown", bio: "Has a ton of energy", adoptable: false)

dogs = Dog.create(name: "Macha", breed: "German Shepard", age: 1, color: "black", bio: "Friendly, ready for a home", adoptable: true)
