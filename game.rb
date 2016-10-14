class Game
	attr_reader :players
	def initialize()
		@players = []
	end

	def start_game?(response)
		if response.downcase == "yes"
			GameMessage.players_name?
		else
			GameMessage.end_game
		end
	end

	def play_again?
		GameMessage.play_again?
		#possible Response class below
		if gets.chomp == "yes"
			play_round
		else
			end_game
		end
	end

	def play_round
		Round.play_round(self)
	end

	def reset_players(loser)
		reset_ducks
		loser.set_it
		play_again?
	end

	private
	def end_game
		GameMessage.end_game
	end
	
	def reset_ducks
		players.each do |duck|
			duck.reset
		end
	end

end