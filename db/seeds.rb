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
Role.delete_all
Distance.create(distance: '5 k', description: 'Not too far')
tenK = Distance.create(distance: '10 k', description: 'Little further')

#create event

FNR.create(distance_id: 1, number: 2, title: 'Friday Night Run', cash: '$5.00', description: "Puppy is doing something somewhere and we should join him and get drunk and eat pizza after running and stuff", startLocation: "Northshore Bay, Madison, WI", publish: true)
Hash.create(distance_id: 1, number: 3, title: 'Hash', cash: '$5.00', description: "Hashing is awesome", startLocation: "Probably in Madison, WI", publish: true)
Race.create(distance_id: 1, number: 4, title: 'Finnish Five', cash: '$10.00', description: "Race for something", startLocation: "Not sure where, Madison, WI", publish: true)








