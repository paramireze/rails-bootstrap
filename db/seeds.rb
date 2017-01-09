# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
nummy = User.create(first_name: 'Numb', last_name: 'Ass', username: 'nummy', password: 'password', email: 'paramireze@gmail.com')
pokey = User.create(first_name: 'cow ', last_name: 'poker', username: 'pokey', password: 'password', email: 'paramireze@gmail.com')

Role.delete_all
Role.create(name:'User')
Role.create(name:'Racer')
hasher = Role.create(name:'Hasher')
admin = Role.create(name:'Admin')

UserRole.delete_all
UserRole.create(user: nummy, role: admin)
UserRole.create(user: pokey, role: hasher)