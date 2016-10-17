class Game
	attr_reader :players
	def initialize()
		GameMessage.intro
		@players = []
	end

	def start_game?(response)
		if response.downcase == "yes"
			player_one
		else
			end_game
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

	private
	def play_round
		round = Round.new(players: self.players)
		reset_players(round.loser)
	end

	def reset_players(loser)
		reset_ducks
		loser.set_it
		play_again?
	end

	def player_one
		GameMessage.players_name?
		player = Player.new(first_name: gets.chomp, human: true)
		self.players << player
		welcome(player)
	end

	def welcome(player)
		GameMessage.welcome(player)
		Player.adding_players(game: self, player_count: gets.chomp.to_i)
		play_round
	end

	def end_game
		GameMessage.end_game
	end
	
	def reset_ducks
		players.each do |duck|
			duck.reset
		end
	end
end