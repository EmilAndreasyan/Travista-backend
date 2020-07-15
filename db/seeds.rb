# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Country.destroy_all
City.destroy_all
#Sightseeing.destroy_all


# user1 = User.create(name: Faker::Name.name, email: Faker::Internet.email, age: rand(18..80), gender: Faker::Gender.binary_type, address: Faker::Address.full_address, image: 'https://picsum.photos/200')
# user2 = User.create(name: Faker::Name.name, email: Faker::Internet.email, age: rand(18..80), gender: Faker::Gender.binary_type, address: Faker::Address.full_address, image: 'https://picsum.photos/200')

# item1 = Item.create(name: 'cardigan', size: 'xs', price: rand(1..200), in_stock: Faker::Boolean.boolean, color: Faker::Color.hex_color, image: 'https://picsum.photos/200', gender: Faker::Gender.binary_type, user: user1)

# item2 = Item.create(name: 'trousers', size: 's', price: rand(1..200), in_stock: Faker::Boolean.boolean, color: Faker::Color.hex_color, image: 'https://picsum.photos/200', gender: Faker::Gender.binary_type, user: user1)

# item3 = Item.create(name: 'coat', size: 'xl', price: rand(1..200), in_stock: Faker::Boolean.boolean, color: Faker::Color.hex_color, image: 'https://picsum.photos/200', gender: Faker::Gender.binary_type, user: user1)

# item4 = Item.create(name: 'jeans', size: 'm', price: rand(1..200), in_stock: Faker::Boolean.boolean, color: Faker::Color.hex_color, image: 'https://picsum.photos/200', gender: Faker::Gender.binary_type, user: user2)

# item5 = Item.create(name: 'blazer', size: 'l', price: rand(1..200), in_stock: Faker::Boolean.boolean, color: Faker::Color.hex_color, image: 'https://picsum.photos/200', gender: Faker::Gender.binary_type, user: user2)

# item6 = Item.create(name: 'shirt', size: 'm', price: rand(1..200), in_stock: Faker::Boolean.boolean, color: Faker::Color.hex_color, image: 'https://picsum.photos/200', gender: Faker::Gender.binary_type, user: user2)

@usa = Country.create(id: 1, name: 'USA', capital: 'Washington', language: 'English', currency: 'US dollar', area: 3797000000, flag_url: 'https://upload.wikimedia.org/wikipedia/commons/f/ff/United-States-orb.png')

@france = Country.create(id: 2, name: 'France', capital: 'Paris', language: 'French', currency: 'Euro', area: 248573, flag_url: 'https://upload.wikimedia.org/wikipedia/commons/d/db/FranceFlag-ico.png')

@italy = Country.create(id: 3, name: 'Italy', capital: 'Rome', language: 'Italian', currency: 'Euro', area: 116347, flag_url: 'https://www.shareicon.net/data/256x256/2015/04/16/23636_flag_256x256.png')

@sacramento = City.create(id: 4, country: @usa, name: 'Sacramento', image_url: 'https://www.publicdomainpictures.net/pictures/310000/nahled/tower-bridge-in-sacramento.jpg', population: 2123000, description: 'Sacramento is the capital of the State of California and is the fifth largest city in the state', comment: '')

@san_francisco = City.create(id: 5, country: @usa, name: 'San Francisco', image_url: 'https://live.staticflickr.com/609/32520117426_3a2a20d705_b.jpg', population: 3314000, description: 'A popular tourist destination, San Francisco is known for its cool summers, fog, steep rolling hills, eclectic mix of architecture', comment: '')

@paris = City.create(id: 6, country: @france, name: 'Paris', image_url: 'https://cdn.pixabay.com/photo/2019/07/21/16/29/paris-4353082_960_720.jpg', population: 2148000, description: "Paris, France's capital, is a major European city and a global center for art, fashion, gastronomy and culture.", comment: '')

@lyon = City.create(id: 7, country: @france, name: 'Lyon', image_url: 'https://live.staticflickr.com/5282/5343959389_ab991fa1f5_b.jpg', population: 513275, description: "Lyon, the capital city in France’s Auvergne-Rhône-Alpes region, sits at the junction of the Rhône and Saône rivers.", comment: '')

@rome = City.create(id: 8, country: @italy, name: 'Rome', image_url: 'https://i2.pickpik.com/photos/870/2/374/italy-rome-coliseum-preview.jpg', population: 2860009, description: "Rome is the capital city and a special comune of Italy as well as the capital of the Lazio region. The city has been a major human settlement for over two millennia.")

@florence = City.create(id: 9, country: @italy, name: 'Florence', image_url: 'https://cdn.pixabay.com/photo/2017/03/15/21/51/florence-2147625_960_720.jpg', population: 2860009, description: "Florence, capital of Italy’s Tuscany region, is home to many masterpieces of Renaissance art and architecture.", comment: '')




# @mix = Sightseeing.create(id: 6, city_id: 3, category: 'nightlife', name: 'Mix club', image_url: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcommons.wikimedia.org%2Fwiki%2FFile%3AMix_Club.JPG&psig=AOvVaw1fI7Tc4_iYOhoGuMGGElEp&ust=1593744225330000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCJD5hofGreoCFQAAAAAdAAAAABAD', description: 'The Disco Mix Club sells megamixes and remixes every month produced by other disc jockeys')

# @alcatraz = Sightseeing.create(id: 7, city_id: 4, category: 'prison', name: 'Alcatraz', image_url: 'https://live.staticflickr.com/3816/9479262255_9fb025f10a_b.jpg', description: 'Alcatraz Island is located in San Francisco Bay, 1.25 miles offshore from San Francisco, California, United States.')







