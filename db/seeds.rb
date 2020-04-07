# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# *** do not seed new users ***
puts "destroy users"
User.destroy_all

puts "creating new users"

User.create(name: "Cartman", password:"123")
User.create(name: "Stan", password:"123")
User.create(name: "Kyle", password:"123")
User.create(name: "Kenny", password:"123")

puts "destroy games"
Game.destroy_all

puts "creating new games"

Game.create()
Game.create()
Game.create()

puts "destroy user_games"
UserGame.destroy_all

puts "creating new user_games"

UserGame.create(user_id:1, game_id:1, win: true, points: 100)
UserGame.create(user_id:2, game_id:2, win: true, points: 300)
UserGame.create(user_id:3, game_id:3, win: true, points: 200)


