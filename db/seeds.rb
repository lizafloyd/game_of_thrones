# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jon = Character.create(first_name: "Jon", last_name: "Snow", alive: true, house_id: 1)
tyrion = Character.create(first_name: "Tyrion", last_name: "Lannister", alive: true, house_id: 2)
ned = Character.create(first_name: "Eddard", last_name: "Stark", alive: false, house_id: 1)

stark = House.create(name: "Stark", seat: "Winterfell", words: "Winter is Coming", sigil_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/8/8a/House-Stark-Main-Shield.PNG/revision/latest/scale-to-width-down/250?cb=20160703180116")
lannister = House.create(name: "Lannister", seat: "Casterly Rock", words: "Hear me Roar", sigil_url: "http://vignette3.wikia.nocookie.net/gameofthrones/images/8/8a/House-Lannister-Main-Shield.PNG/revision/latest/scale-to-width-down/250?cb=20151207184048")
