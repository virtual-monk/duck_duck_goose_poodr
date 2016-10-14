class GameMessage
	def self.intro
		puts "Hey you, wanna play Duck Duck Goose?(Yes or No)"
	end

	def self.welcome(player)
		puts "Welcome #{player.first_name}"
		puts "How many players do you want to play against?"
	end

	def self.play_again?
		puts "Would you like to play again?"
	end

	def self.players_name?
		puts "What's your name?"
	end

	def self.number_of_players
		puts "How many players will there be?"
	end

	def self.end_game
		puts "Twas fun while it lasted. Later, playa!"
	end
end