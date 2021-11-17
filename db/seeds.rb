require 'open-uri'

Island.destroy_all
User.destroy_all



owen = User.create(email: "owen@123.com", password: "islebnb", first_name: "Owen", last_name: "Baldwin")
photo1 = URI.open("https://content.knightfrank.com/property/rsi180047/images/1913f30d-d194-4d6d-9127-ef423a0c9c44-0.jpg?cio=true&w=1200")
exuma = Island.create(name: "Exuma", location: "Bahamas", description: "Crystal blue waters and white sand beaches make Exuma the perfect Island getaway", user: owen, price: "£995.50")
exuma.photo.attach(io: photo1, filename: 'nes.jpg', content_type: 'image/jpg')

zoe = User.create(email: "zoe@123.com", password: "islebnb", first_name: "Zoe", last_name: "Bell")
photo2 = URI.open("https://www.wendyperrin.com/wp-content/uploads/2020/02/Galapagos-Ecuador-cr-Shutterstock.jpg")
galapagos = Island.create(name: "Galapagos", location: "Pacific Ocean", description: "Discover amazing wildlife in an incredible setting off the coast of Ecuador", user: zoe, price: "£1995.50")
galapagos.photo.attach(io: photo2, filename: 'nes.jpg', content_type: 'image/jpg')

joe = User.create(email: "joe@123.com", password: "islebnb", first_name: "Joe", last_name: "Waymark")
photo3 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/47/d1/98/exterior.jpg?w=900&h=-1&s=1")
maldives = Island.create(name: "Maldives", location: "Indian Ocean", description: "White sand beaches and cocktails", user: joe, price: "£795.50")
maldives.photo.attach(io: photo3, filename: 'nes.jpg', content_type: 'image/jpg')

emma = User.create(email: "emma@123.com", password: "islebnb", first_name: "Emma", last_name: "Zurstrassen")
photo4 = URI.open("https://www.tahiti.com/images1/thumbs/conrad-bora-bora-nui-aerial-1200x720.jpg")
borabora = Island.create(name: "BoraBora", location: "French Polynesia", description: "Located in French Polynesia, BoraBora is well-known for being both beautiful and relaxing", user: emma, price: "£695.50")
borabora.photo.attach(io: photo4, filename: 'nes.jpg', content_type: 'image/jpg')

photo5 = URI.open("https://www.thetimes.co.uk/imageserver/image/%2Fmethode%2Ftimes%2Fprod%2Fweb%2Fbin%2Fbc5513ec-8478-11ea-b876-ef9d21d57c48.jpg?crop=5035%2C2832%2C331%2C385&resize=1200")
island1 = Island.create(name: "Tropical Paradise", location: "Pacific Ocean", description: "Crystal blue waters and white sand beaches make it the perfect Island getaway", user: owen, price: "£295.50")
island1.photo.attach(io: photo5, filename: 'nes.jpg', content_type: 'image/jpg')

photo6 = URI.open("https://meditationroad.com/wp-content/uploads/2019/09/Tropical-Island-600x499.jpg")
island2 = Island.create(name: "Beautiful Island", location: "Pacific Ocean", description: "Discover amazing wildlife in an incredible setting", user: zoe, price: "£2995.50")
island2.photo.attach(io: photo6, filename: 'nes.jpg', content_type: 'image/jpg')

photo7 = URI.open("https://505488.smushcdn.com/2242995/wp-content/uploads/2019/08/53455479d535cff3eb0000b4.jpg?lossy=1&strip=1&webp=1")
island3 = Island.create(name: "Nice Island", location: "Indian Ocean", description: "White sand beaches and cocktails", user: joe, price: "£2995.50")
island3.photo.attach(io: photo7, filename: 'nes.jpg', content_type: 'image/jpg')

photo8 = URI.open("https://islandsandislets.com/wp-content/uploads/2021/01/tropical-island.jpg")
island4 = Island.create(name: "Rocky Island", location: "French Polynesia", description: "rocks surrounded by water", user: emma, price: "£895.50")
island4.photo.attach(io: photo8, filename: 'nes.jpg', content_type: 'image/jpg')
