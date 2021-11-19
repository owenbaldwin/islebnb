require 'open-uri'

Booking.destroy_all
Island.destroy_all
User.destroy_all

puts "clean db"

owen = User.create(email: "owen@123.com", password: "islebnb", first_name: "Owen", last_name: "Baldwin")
photo1 = URI.open("https://content.knightfrank.com/property/rsi180047/images/1913f30d-d194-4d6d-9127-ef423a0c9c44-0.jpg?cio=true&w=1200")
exuma = Island.create(name: "Exuma", location: "Exuma", description: "Crystal blue waters and white sand beaches make Exuma the perfect Island getaway", user: owen, price: "£995.50", latitude: 23.6193, longitude: 75.9695)
exuma.photo.attach(io: photo1, filename: 'nes.jpg', content_type: 'image/jpg')

puts "island created"

zoe = User.create(email: "zoe@123.com", password: "islebnb", first_name: "Zoe", last_name: "Bell")
photo2 = URI.open("https://www.wendyperrin.com/wp-content/uploads/2020/02/Galapagos-Ecuador-cr-Shutterstock.jpg")
galapagos = Island.create(name: "Galapagos", location: "Galapagos", description: "Discover amazing wildlife in an incredible setting off the coast of Ecuador", user: zoe, price: "£1995.50", latitude: 0.9538, longitude: 90.9656)
galapagos.photo.attach(io: photo2, filename: 'nes.jpg', content_type: 'image/jpg')

puts "island created"

joe = User.create(email: "joe@123.com", password: "islebnb", first_name: "Joe", last_name: "Waymark")
photo3 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/47/d1/98/exterior.jpg?w=900&h=-1&s=1")
maldives = Island.create(name: "Maldives", location: "Maldives", description: "White sand beaches and cocktails", user: joe, price: "£795.50", latitude: 3.2028, longitude: 73.2207)
maldives.photo.attach(io: photo3, filename: 'nes.jpg', content_type: 'image/jpg')

puts "island created"

emma = User.create(email: "emma@123.com", password: "islebnb", first_name: "Emma", last_name: "Zurstrassen")
photo4 = URI.open("https://www.tahiti.com/images1/thumbs/conrad-bora-bora-nui-aerial-1200x720.jpg")
borabora = Island.create(name: "BoraBora", location: "BoraBora", description: "Located in French Polynesia, BoraBora is well-known for being both beautiful and relaxing", user: emma, price: "£695.50", latitude: 16.5004, longitude: 151.7415)
borabora.photo.attach(io: photo4, filename: 'nes.jpg', content_type: 'image/jpg')

puts "island created"

photo5 = URI.open("https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F617fede0748f4f48d008a9ff%2FView-on-Napali-Coast-on-Kauai-island-on-Hawaii%2F960x0.jpg%3Ffit%3Dscale")
kauai = Island.create(name: "Kauai", location: "Kauai", description: "Crystal blue waters and white sand beaches make it the perfect Island getaway", user: owen, price: "£295.50", latitude: 22.0964, longitude: 159.5261)
kauai.photo.attach(io: photo5, filename: 'nes.jpg', content_type: 'image/jpg')

puts "island created"

photo6 = URI.open("https://www.thetimes.co.uk/imageserver/image/%2Fmethode%2Fsundaytimes%2Fprod%2Fweb%2Fbin%2Fc66011a6-22d9-11ec-a00c-ba7759562f04.jpg?crop=3933%2C2212%2C20%2C152&resize=1200")
mauritius = Island.create(name: "Mauritius", location: "Mauritius", description: "Discover amazing wildlife in an incredible setting", user: zoe, price: "£2995.50", latitude: -20.3484, longitude: 57.5522)
mauritius.photo.attach(io: photo6, filename: 'nes.jpg', content_type: 'image/jpg')

puts "island created"

photo7 = URI.open("https://i.natgeofe.com/n/d84e5f71-e30f-452d-932c-2ae4f2c71eb1/moai-statues-anakena-beach-easter-island.jpg?w=1272&h=880")
island3 = Island.create(name: "Easter Island", location: "Easter Island", description: "White sand beaches and cocktails", user: joe, price: "£2995.50", latitude: -27.1127, longitude: -109.3497)
island3.photo.attach(io: photo7, filename: 'nes.jpg', content_type: 'image/jpg')

puts "island created"

photo8 = URI.open("https://www.visittheusa.co.uk/sites/default/files/styles/hero_l/public/images/hero_media_image/2017-03/Rota_GettyImages-519978553_Web72DPI.jpg?itok=CiDUUwD4")
island4 = Island.create(name: "Rota Island", location: "Rota Island", description: "rocks surrounded by water", user: emma, price: "£895.50", latitude: 14.1509, longitude: 145.2149)
island4.photo.attach(io: photo8, filename: 'nes.jpg', content_type: 'image/jpg')

puts "island created"
