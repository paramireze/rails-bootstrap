# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create users
User.delete_all
nummy = User.create(first_name: 'Numb', last_name: 'Ass', username: 'nummy', password: 'password', email: 'paramireze@gmail.com')
pokey = User.create(first_name: 'cow ', last_name: 'poker', username: 'pokey', password: 'password', email: 'paramireze@gmail.com')

#create roles
Role.delete_all
Role.create(name:'User')
Role.create(name:'Racer')
hasher = Role.create(name:'Hasher')
admin = Role.create(name:'Admin')


# assign roles
nummy.roles << admin
pokey.roles << hasher

# save users
nummy.save
pokey.save

#create distances
Distance.delete_all
fiveK = Distance.create(length: 5, measurement: 'Kilometers', description: '3.2 miles')

#create event
hash = EventType.create(name:'hash', description: 'drink beer and run around like a silly man')

Event.create(distance_id: fiveK.id, event_type_id: hash.id, number: 4, title: 'Finnish Five', cash: '$10.00', description: "Race for something", startLocation: "Not sure where, Madison, WI", visible: true)









