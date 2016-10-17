class GameMessage
	def initialize()

	end
	def self.intro
		puts "Hey you, wanna play Duck Duck Goose?(Yes or No)"
	end

	def self.welcome(player)
		puts "Welcome #{player.first_name}"
		puts "How many players do you want to play against?"
	end

	def self.play_again?
		puts "Would you like to play again?(Yes or No)"
	end

	def self.players_name?
		puts "What's your name?"
	end

	def self.number_of_players
		puts "How many players will there be?"
	end

	def self.end_game
		puts "T'was fun while it lasted. Later, playa!"
	end

	def self.round_results(winner:, loser:)
		puts "#{winner.first_name} wins!!!"
		puts "#{loser.first_name} loses!!!"
	end
	
	def self.choose_goose(player:, ducks:)
		puts "Choose your goose:"
		ducks.each do |duck|
			puts duck.first_name 
		end
	end
end