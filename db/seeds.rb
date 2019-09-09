# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Team.destroy_all
team1 = Team.find_or_create_by(name: "Lakeshow", city: "BMORE", mascot:"bald eagle")


Player.destroy_all

lebron = Player.find_or_create_by(name: "LeBron James", jersey_number: 23, position: "SF",
   current_team: "Lakers", points: 26, assists: 10, rebounds: 10, FGP: 52.3)

harden = Player.find_or_create_by(name: "James Harden", jersey_number: 13, position: "SG",
    current_team: "Lakers", points: 32, assists: 12, rebounds: 3, FGP: 60.5)

rose = Player.find_or_create_by(name: "Derrick Rose", jersey_number: 1, position: "PG",
    current_team: "Lakers", points: 22, assists: 8, rebounds: 5, FGP: 46.1)

love = Player.find_or_create_by(name: "Kevin Love", jersey_number: 0, position: "PF",
    current_team: "Lakers", points: 16, assists: 3, rebounds: 9, FGP: 29.7)

jokic = Player.find_or_create_by(name: "Nikola Jokic", jersey_number: 15, position: "C",
    current_team: "Lakers", points: 27, assists: 10, rebounds: 15, FGP: 62.0)

TeamPlayer.destroy_all
team_player1 = TeamPlayer.find_or_create_by(team_id: team1.id, player_id: lebron.id)
team_player2 = TeamPlayer.find_or_create_by(team_id: team1.id, player_id: harden.id)
team_player3 = TeamPlayer.find_or_create_by(team_id: team1.id, player_id: rose.id)
team_player4 = TeamPlayer.find_or_create_by(team_id: team1.id, player_id: love.id)
team_player5 = TeamPlayer.find_or_create_by(team_id: team1.id, player_id: jokic.id)
