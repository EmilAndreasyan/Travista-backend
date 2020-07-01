# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Item.destroy_all


user1 = User.create(name: Faker::Name.name, email: Faker::Internet.email, age: rand(18..80), gender: Faker::Gender.binary_type, address: Faker::Address.full_address, image: 'https://picsum.photos/200')
user2 = User.create(name: Faker::Name.name, email: Faker::Internet.email, age: rand(18..80), gender: Faker::Gender.binary_type, address: Faker::Address.full_address, image: 'https://picsum.photos/200')

item1 = Item.create(name: 'cardigan', size: 'xs', price: rand(1..200), in_stock: true, color: Faker::Color.hex_color, image: 'https://picsum.photos/200', user: user1)

item2 = Item.create(name: 'trousers', size: 's', price: rand(1..200), in_stock: true, color: Faker::Color.hex_color, image: 'https://picsum.photos/200', user: user1)

item3 = Item.create(name: 'jeans', size: 'm', price: rand(1..200), in_stock: true, color: Faker::Color.hex_color, image: 'https://picsum.photos/200', user: user2)

item4 = Item.create(name: 'blazer', size: 'l', price: rand(1..200), in_stock: true, color: Faker::Color.hex_color, image: 'https://picsum.photos/200', user: user2)


