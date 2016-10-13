# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all
Character.destroy_all

stark = House.create(name: "Stark", seat: "Winterfell", words: "Winter is Coming", sigil_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/8/8a/House-Stark-Main-Shield.PNG/revision/latest/scale-to-width-down/250?cb=20160703180116")
lannister = House.create(name: "Lannister", seat: "Casterly Rock", words: "Hear me Roar", sigil_url: "http://vignette3.wikia.nocookie.net/gameofthrones/images/8/8a/House-Lannister-Main-Shield.PNG/revision/latest/scale-to-width-down/250?cb=20151207184048")
baratheon = House.create(name: "Baratheon", seat: "Storm's End", words: "Ours is the Fury", sigil_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/0/00/House-Baratheon-Main-Shield.PNG/revision/latest/scale-to-width-down/250?cb=20160312091515")
targaryen = House.create(name: "Targaryen", seat: "Dragonstone", words: "Fire and Blood", sigil_url: "http://vignette2.wikia.nocookie.net/gameofthrones/images/4/43/House-Targaryen-Main-Shield.PNG/revision/latest/scale-to-width-down/250?cb=20151209185148")


jon = Character.create(first_name: "Jon", last_name: "Snow", alive: true, house_id: 1)
rob = Character.create(first_name: "Rob", last_name: "Stark", alive: false, house_id: 1)
arya = Character.create(first_name: "Arya", last_name: "Stark", alive: true, house_id: 1)
bran = Character.create(first_name: "Bran", last_name: "Stark", alive: true, house_id: 1)
rickon = Character.create(first_name: "Rickon", last_name: "Stark", alive: false, house_id: 1)
ned = Character.create(first_name: "Eddard", last_name: "Stark", alive: false, house_id: 1)
catelyn = Character.create(first_name: "Catelyn", last_name: "Stark", alive: false, house_id: 1)

cersei = Character.create(first_name: "Cersei", last_name: "Lannister", alive: true, house_id: 2)
jamie = Character.create(first_name: "Jamie", last_name: "Lannister", alive: true, house_id: 2)
tyrion = Character.create(first_name: "Tyrion", last_name: "Lannister", alive: true, house_id: 2)
tywin = Character.create(first_name: "Tywin", last_name: "Lannister", alive: false, house_id: 2)

robert = Character.create(first_name: "Robert", last_name: "Baratheon", alive: false, house_id: 3)
stannis = Character.create(first_name: "Stannis", last_name: "Baratheon", alive: false, house_id: 3)
renly = Character.create(first_name: "Renly", last_name: "Baratheon", alive: false, house_id: 3)

danaerys = Character.create(first_name: "Danaerys", last_name: "Targaryen", alive: true, house_id: 4)
rhaegar = Character.create(first_name: "Rhaegar", last_name: "Targaryen", alive: false, house_id: 4)
viserys = Character.create(first_name: "Viserys", last_name: "Targaryen", alive: false, house_id: 4)
aerys = Character.create(first_name: "Aerys II", last_name: "Targaryen", alive: false, house_id: 4)
