# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Record.delete_all
UserGoal.delete_all

user1 = User.new(email: "email1@email.com", password: "123456", 
		firstname: "Joe", lastname: "Smith", username: "joeysmithy")
user1.save

record1 = Record.new(today_total: 2000, today_consumed: 2500, today_exercise: 500, 
		user_id: 1, date: "2017-06-22")
record1.save

goal1 = UserGoal.new(target: 13.0, current: 14.5, user_id: 1)
goal1.save