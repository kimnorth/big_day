# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all

user1 = User.new(email: "email1@email.com", password: "123456")
user1.save

user2 = User.new(email: "email2@email.com", password: "123456")
user2.save

user3 = User.new(email: "email3@email.com", password: "123456")
user3.save