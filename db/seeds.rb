# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Team.destroy_all
team1 = Team.find_or_create_by(name: "Lakeshow", city: "BMORE", mascot:"bald eagle")
team2 = Team.find_or_create_by(name: "Better Call Gasol", city: "Toronto", mascot:"lions")
team3 = Team.find_or_create_by(name: "The King and I", city: "Seattle", mascot:"chickens")
team4 = Team.find_or_create_by(name: "Bestbrook", city: "Miami", mascot:"tigers")
team5 = Team.find_or_create_by(name: "Ridirkulous", city: "NYC", mascot:"falcons")
team6 = Team.find_or_create_by(name: "Go Harden the paint", city: "Boston", mascot:"dolphins")
team7 = Team.find_or_create_by(name: "Everybody Loves Draymond", city: "Houston", mascot:"sharks")
team8 = Team.find_or_create_by(name: "James of Thrones", city: "New Orleans", mascot:"broncos")
team9 = Team.find_or_create_by(name: "Monster Squad", city: "Chicago", mascot:"bengals")
team10 = Team.find_or_create_by(name: "The Granger Zone", city: "San Fran", mascot:"hawks")



Player.destroy_all

lebron = Player.find_or_create_by(name: "LeBron James", jersey_number: 23, position: "SF",
   current_team: "Lakers", points: 26, assists: 10, rebounds: 10, FGP: 52.3)

durant = Player.find_or_create_by(name: "Kevin Durant", jersey_number: 7, position: "SF",
    current_team: "Nets", points: 17, assists: 7, rebounds: 10, FGP: 42.0)

harden = Player.find_or_create_by(name: "James Harden", jersey_number: 13, position: "SG",
    current_team: "Rockets", points: 32, assists: 12, rebounds: 3, FGP: 60.5)

rose = Player.find_or_create_by(name: "Derrick Rose", jersey_number: 1, position: "PG",
    current_team: "Timberwolves", points: 22, assists: 8, rebounds: 5, FGP: 46.1)

love = Player.find_or_create_by(name: "Kevin Love", jersey_number: 0, position: "PF",
    current_team: "Cavaliers", points: 16, assists: 3, rebounds: 9, FGP: 29.7)

jokic = Player.find_or_create_by(name: "Nikola Jokic", jersey_number: 15, position: "C",
    current_team: "Nuggets", points: 27, assists: 10, rebounds: 15, FGP: 62.0)

davis = Player.find_or_create_by(name: "Anthony Davis", jersey_number: 3, position: "PF",
       current_team: "Lakers", points: 22, assists: 4, rebounds: 14, FGP: 50.1)

giannis = Player.find_or_create_by(name: "Giannis Antetokounmpo", jersey_number: 34, position: "PF",
        current_team: "Bucks", points: 35, assists: 5, rebounds: 9, FGP: 52.7)

curry = Player.find_or_create_by(name: "Stephen Curry", jersey_number: 30, position: "PG",
        current_team: "Warriors", points: 19, assists: 9, rebounds: 4, FGP: 49.9)

towns = Player.find_or_create_by(name: "Karl-Anthony Towns", jersey_number: 32, position: "C",
        current_team: "Timberwolves", points: 13, assists: 2, rebounds: 13, FGP: 45.0)

lillard = Player.find_or_create_by(name: "Damian Lillard", jersey_number: 0, position: "PG",
        current_team: "Blazers", points: 17, assists: 12, rebounds: 7, FGP: 61.2)

trae = Player.find_or_create_by(name: "Trae Young", jersey_number: 11, position: "SG",
           current_team: "Hawks", points: 25, assists: 9, rebounds: 8, FGP: 53.7)

westbrook = Player.find_or_create_by(name: "Russell Westbrook", jersey_number: 0, position: "SG",
            current_team: "Rockets", points: 40, assists: 12, rebounds: 10, FGP: 59.9)

simmons = Player.find_or_create_by(name: "Ben Simmons", jersey_number: 25, position: "PG",
            current_team: "76ers", points: 12, assists: 2, rebounds: 7, FGP: 35.2)

george = Player.find_or_create_by(name: "Paul George", jersey_number: 13, position: "SF",
            current_team: "Clippers", points: 17, assists: 5, rebounds: 5, FGP: 40.2)

butler = Player.find_or_create_by(name: "Jimmy Butler", jersey_number: 23, position: "SF",
            current_team: "Heats", points: 29, assists: 1, rebounds: 9, FGP: 50.6)

lowry = Player.find_or_create_by(name: "Kyle Lowry", jersey_number: 7, position: "PG",
               current_team: "Raptors", points: 9, assists: 7, rebounds: 7, FGP: 39.1)

griffin = Player.find_or_create_by(name: "Blake Griffin", jersey_number: 23, position: "C",
                current_team: "Pistons", points: 17, assists: 4, rebounds: 13, FGP: 43.2)

mccollum = Player.find_or_create_by(name: "CJ McCollum", jersey_number: 3, position: "SG",
                current_team: "Trailblazers", points: 25, assists: 5, rebounds: 7, FGP: 46.9)

tatum = Player.find_or_create_by(name: "Jayson Tatum", jersey_number: 0, position: "SF",
                current_team: "Celtics", points: 14, assists: 5, rebounds: 7, FGP: 33.3)

kyrie = Player.find_or_create_by(name: "Kyrie Irving", jersey_number: 11, position: "PG",
                current_team: "Nets", points: 20, assists: 15, rebounds: 11, FGP: 51.1)

paul = Player.find_or_create_by(name: "Chris Paul", jersey_number: 3, position: "PG",
                current_team: "Thunder", points: 12, assists: 8, rebounds: 5, FGP: 38.0)

zion = Player.find_or_create_by(name: "Zion WIlliamson", jersey_number: 1, position: "PF",
                current_team: "Pelicans", points: 16, assists: 3, rebounds: 12, FGP: 41.9)

kawhi = Player.find_or_create_by(name: "Kawhi Leonard", jersey_number: 2, position: "SF",
                current_team: "Clippers", points: 20, assists: 13, rebounds: 12, FGP: 56.5)

ball = Player.find_or_create_by(name: "Lonzo Ball", jersey_number: 2, position: "PG",
                current_team: "Pelicans", points: 4, assists: 9, rebounds: 8, FGP: 31.4)

mcgee = Player.find_or_create_by(name: "JaVale McGee", jersey_number: 0, position: "C",
                current_team: "Lakers", points: 10, assists: 1, rebounds: 15, FGP: 40.1)

fred = Player.find_or_create_by(name: "Fred VanVleet", jersey_number: 23, position: "PG",
                current_team: "Raptors", points: 17, assists: 9, rebounds: 9, FGP: 35.5)

sexton = Player.find_or_create_by(name: "Collin Sexton", jersey_number: 2, position: "SG",
                current_team: "Cavaliers", points: 12, assists: 4, rebounds: 8, FGP: 46.9)

tatum = Player.find_or_create_by(name: "Jayson Tatum", jersey_number: 0, position: "SF",
                current_team: "Celtics", points: 14, assists: 5, rebounds: 7, FGP: 33.3)

wiggins = Player.find_or_create_by(name: "Andrew Wiggins", jersey_number: 22, position: "SF",
                current_team: "Timberwolves", points: 15, assists: 6, rebounds: 7, FGP: 38.7)

len = Player.find_or_create_by(name: "Alex Len", jersey_number: 3, position: "PF",
                current_team: "Hawks", points: 6, assists: 4, rebounds: 12, FGP: 38.9)

zeller = Player.find_or_create_by(name: "Cody Zeller", jersey_number: 40, position: "PF",
                current_team: "Hornets", points: 12, assists: 6, rebounds: 12, FGP: 41.9)

dragic = Player.find_or_create_by(name: "Goran Dragic", jersey_number: 7, position: "PG",
                current_team: "Heat", points: 17, assists: 4, rebounds: 6, FGP: 56.9)

waiters = Player.find_or_create_by(name: "Dion Waiters", jersey_number: 11, position: "SG",
                current_team: "Heat", points: 1, assists: 4, rebounds: 4, FGP: 25.7)


TeamPlayer.destroy_all

team_player1 = TeamPlayer.find_or_create_by(team_id: team1.id, player_id: lebron.id)
team_player2 = TeamPlayer.find_or_create_by(team_id: team1.id, player_id: harden.id)
team_player3 = TeamPlayer.find_or_create_by(team_id: team1.id, player_id: rose.id)
team_player4 = TeamPlayer.find_or_create_by(team_id: team1.id, player_id: love.id)
team_player5 = TeamPlayer.find_or_create_by(team_id: team1.id, player_id: jokic.id)

team_player6 = TeamPlayer.find_or_create_by(team_id: team2.id, player_id: kyrie.id)
team_player7 = TeamPlayer.find_or_create_by(team_id: team2.id, player_id: trae.id)
team_player8 = TeamPlayer.find_or_create_by(team_id: team2.id, player_id: wiggins.id)
team_player9 = TeamPlayer.find_or_create_by(team_id: team2.id, player_id: giannis.id)
team_player10 = TeamPlayer.find_or_create_by(team_id: team2.id, player_id: mcgee.id)

team_player11 = TeamPlayer.find_or_create_by(team_id: team3.id, player_id: lowry.id)
team_player12 = TeamPlayer.find_or_create_by(team_id: team3.id, player_id: rose.id)
team_player13 = TeamPlayer.find_or_create_by(team_id: team3.id, player_id: butler.id)
team_player14 = TeamPlayer.find_or_create_by(team_id: team3.id, player_id: zion.id)
team_player15 = TeamPlayer.find_or_create_by(team_id: team3.id, player_id: griffin.id)

team_player16 = TeamPlayer.find_or_create_by(team_id: team4.id, player_id: westbrook.id)
team_player17 = TeamPlayer.find_or_create_by(team_id: team4.id, player_id: mccollum.id)
team_player18 = TeamPlayer.find_or_create_by(team_id: team4.id, player_id: kawhi.id)
team_player19 = TeamPlayer.find_or_create_by(team_id: team4.id, player_id: davis.id)
team_player20 = TeamPlayer.find_or_create_by(team_id: team4.id, player_id: towns.id)

team_player21 = TeamPlayer.find_or_create_by(team_id: team5.id, player_id: kyrie.id)
team_player22 = TeamPlayer.find_or_create_by(team_id: team5.id, player_id: sexton.id)
team_player23 = TeamPlayer.find_or_create_by(team_id: team5.id, player_id: george.id)
team_player24 = TeamPlayer.find_or_create_by(team_id: team5.id, player_id: zeller.id)
team_player25 = TeamPlayer.find_or_create_by(team_id: team5.id, player_id: jokic.id)

team_player26 = TeamPlayer.find_or_create_by(team_id: team6.id, player_id: lillard.id)
team_player27 = TeamPlayer.find_or_create_by(team_id: team6.id, player_id: harden.id)
team_player28 = TeamPlayer.find_or_create_by(team_id: team6.id, player_id: lebron.id)
team_player29 = TeamPlayer.find_or_create_by(team_id: team6.id, player_id: davis.id)
team_player30 = TeamPlayer.find_or_create_by(team_id: team6.id, player_id: towns.id)

team_player30 = TeamPlayer.find_or_create_by(team_id: team7.id, player_id: simmons.id)
team_player32 = TeamPlayer.find_or_create_by(team_id: team7.id, player_id: sexton.id)
team_player33 = TeamPlayer.find_or_create_by(team_id: team7.id, player_id: tatum.id)
team_player34 = TeamPlayer.find_or_create_by(team_id: team7.id, player_id: zion.id)
team_player35 = TeamPlayer.find_or_create_by(team_id: team7.id, player_id: davis.id)

team_player36 = TeamPlayer.find_or_create_by(team_id: team8.id, player_id: westbrook.id)
team_player37 = TeamPlayer.find_or_create_by(team_id: team8.id, player_id: harden.id)
team_player38 = TeamPlayer.find_or_create_by(team_id: team8.id, player_id: wiggins.id)
team_player39 = TeamPlayer.find_or_create_by(team_id: team8.id, player_id: lebron.id)
team_player40 = TeamPlayer.find_or_create_by(team_id: team8.id, player_id: griffin.id)

team_player41 = TeamPlayer.find_or_create_by(team_id: team9.id, player_id: curry.id)
team_player42 = TeamPlayer.find_or_create_by(team_id: team9.id, player_id: harden.id)
team_player43 = TeamPlayer.find_or_create_by(team_id: team9.id, player_id: durant.id)
team_player44 = TeamPlayer.find_or_create_by(team_id: team9.id, player_id: zion.id)
team_player45 = TeamPlayer.find_or_create_by(team_id: team9.id, player_id: jokic.id)

team_player46 = TeamPlayer.find_or_create_by(team_id: team10.id, player_id: lowry.id)
team_player47 = TeamPlayer.find_or_create_by(team_id: team10.id, player_id: butler.id)
team_player48 = TeamPlayer.find_or_create_by(team_id: team10.id, player_id: george.id)
team_player49 = TeamPlayer.find_or_create_by(team_id: team10.id, player_id: love.id)
team_player50 = TeamPlayer.find_or_create_by(team_id: team10.id, player_id: towns.id)
