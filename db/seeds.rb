# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Item.destroy_all
Country.destroy_all
City.destroy_all
Sightseeing.destroy_all


# user1 = User.create(name: Faker::Name.name, email: Faker::Internet.email, age: rand(18..80), gender: Faker::Gender.binary_type, address: Faker::Address.full_address, image: 'https://picsum.photos/200')
# user2 = User.create(name: Faker::Name.name, email: Faker::Internet.email, age: rand(18..80), gender: Faker::Gender.binary_type, address: Faker::Address.full_address, image: 'https://picsum.photos/200')

# item1 = Item.create(name: 'cardigan', size: 'xs', price: rand(1..200), in_stock: Faker::Boolean.boolean, color: Faker::Color.hex_color, image: 'https://picsum.photos/200', gender: Faker::Gender.binary_type, user: user1)

# item2 = Item.create(name: 'trousers', size: 's', price: rand(1..200), in_stock: Faker::Boolean.boolean, color: Faker::Color.hex_color, image: 'https://picsum.photos/200', gender: Faker::Gender.binary_type, user: user1)

# item3 = Item.create(name: 'coat', size: 'xl', price: rand(1..200), in_stock: Faker::Boolean.boolean, color: Faker::Color.hex_color, image: 'https://picsum.photos/200', gender: Faker::Gender.binary_type, user: user1)

# item4 = Item.create(name: 'jeans', size: 'm', price: rand(1..200), in_stock: Faker::Boolean.boolean, color: Faker::Color.hex_color, image: 'https://picsum.photos/200', gender: Faker::Gender.binary_type, user: user2)

# item5 = Item.create(name: 'blazer', size: 'l', price: rand(1..200), in_stock: Faker::Boolean.boolean, color: Faker::Color.hex_color, image: 'https://picsum.photos/200', gender: Faker::Gender.binary_type, user: user2)

# item6 = Item.create(name: 'shirt', size: 'm', price: rand(1..200), in_stock: Faker::Boolean.boolean, color: Faker::Color.hex_color, image: 'https://picsum.photos/200', gender: Faker::Gender.binary_type, user: user2)

usa = Country.create(name: 'USA', capital: 'Washington', language: 'English', currency: 'US dollar', area: 3797000000, flag: 'https://upload.wikimedia.org/wikipedia/commons/f/ff/United-States-orb.png')

sacramento = City.create(country: usa, name: 'Sacramento', image: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FSacramento%2C_California&psig=AOvVaw2UyMoDoDLdfh38F985IW1L&ust=1593744475862000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJiuwf3GreoCFQAAAAAdAAAAABAD', population: 2123000, description: 'Sacramento is the capital of the State of California and is the fifth largest city in the state')

mix = Sightseeing.create(city: sacramento, category: 'nightlife', name: 'Mix club', image: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3AMix_Club.JPG&psig=AOvVaw1fI7Tc4_iYOhoGuMGGElEp&ust=1593744225330000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJD5hofGreoCFQAAAAAdAAAAABAD', description: 'The Disco Mix Club sells megamixes and remixes every month produced by other disc jockeys')





