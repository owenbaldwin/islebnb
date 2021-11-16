# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Island.destroy_all
User.destroy_all

owen = User.create(email: "owen@123.com", password: "islebnb")
owen.save!
exuma = Island.create(name: "Exuma", location: "Bahamas", description: "Crystal blue waters and white sand beaches make Exuma the perfect Island getaway", user: owen)
exuma.save!

zoe = User.create(email: "zoe@123.com", password: "islebnb")
zoe.save!
exuma = Island.create(name: "Galapagos", location: "Pacific Ocean", description: "Discover amazing wildlife in an incredible setting off the coast of Ecuador", user: zoe)
exuma.save!

joe = User.create(email: "joe@123.com", password: "islebnb")
joe.save!
maldives = Island.create(name: "Maldives", location: "Indian Ocean", description: "White sand beaches and cocktails", user: joe)
maldives.save!

emma = User.create(email: "emma@123.com", password: "islebnb")
emma.save!
borabora = Island.create(name: "BoraBora", location: "French Polynesia", description: "Located in French Polynesia, BoraBora is well-known for being both beautiful and relaxing", user: emma)
borabora.save!
