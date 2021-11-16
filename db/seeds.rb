require 'open-uri'

Island.destroy_all
User.destroy_all


owen = User.create(email: "owen@123.com", password: "islebnb")
photo1 = URI.open("https://content.knightfrank.com/property/rsi180047/images/1913f30d-d194-4d6d-9127-ef423a0c9c44-0.jpg?cio=true&w=1200")
exuma = Island.create(name: "Exuma", location: "Bahamas", description: "Crystal blue waters and white sand beaches make Exuma the perfect Island getaway", user: owen)
exuma.photo.attach(io: photo1, filename: 'nes.jpg', content_type: 'image/jpg')

zoe = User.create(email: "zoe@123.com", password: "islebnb")
photo2 = URI.open("https://www.wendyperrin.com/wp-content/uploads/2020/02/Galapagos-Ecuador-cr-Shutterstock.jpg")
galapagos = Island.create(name: "Galapagos", location: "Pacific Ocean", description: "Discover amazing wildlife in an incredible setting off the coast of Ecuador", user: zoe)
galapagos.photo.attach(io: photo2, filename: 'nes.jpg', content_type: 'image/jpg')

joe = User.create(email: "joe@123.com", password: "islebnb")
photo3 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/47/d1/98/exterior.jpg?w=900&h=-1&s=1")
maldives = Island.create(name: "Maldives", location: "Indian Ocean", description: "White sand beaches and cocktails", user: joe)
maldives.photo.attach(io: photo3, filename: 'nes.jpg', content_type: 'image/jpg')

emma = User.create(email: "emma@123.com", password: "islebnb")
photo4 = URI.open("https://www.tahiti.com/images1/thumbs/conrad-bora-bora-nui-aerial-1200x720.jpg")
borabora = Island.create(name: "BoraBora", location: "French Polynesia", description: "Located in French Polynesia, BoraBora is well-known for being both beautiful and relaxing", user: emma)
borabora.photo.attach(io: photo4, filename: 'nes.jpg', content_type: 'image/jpg')

