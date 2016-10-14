class Round
	attr_reader :it, :goose, :players, :game
	def initialize(game)
		@game = game
		@players = game.players
	end

	def self.play_round(game)
		round = Round.new(game)
		round.race
	end

	def race
		puts "#{goose.first_name} chases #{it.first_name}"
		until  goose_wins || it_wins
			it.location += it.speed
			goose.location += goose.speed
		end
	end
	private

	def it_wins
		if it.location >= 360 
			results(loser: goose, winner: it )
			true
		end
	end

	def it 
		find("it") || assign_it
	end

	def goose
		find("goose") || assign_goose
	end
	
	def goose_wins
		if goose.location >= it.location
			results(loser: it, winner: goose)
			true
		end
	end

	def results(winner:, loser:)
		puts "#{winner.first_name} wins!!!"
		puts "#{loser.first_name} loses!!!"
		game.reset_players(loser)
	end

	def find(role)
		players.select{|player| player.role == role}.first
	end

	def ducks
		ducks = players.clone
		ducks.delete(it)
		return ducks
	end

	def assign_it
		it = players.sample
		it.role = "it"
		it.location = 20
		return it
	end

	def assign_goose
		goose = ducks.sample
		goose.role = "goose"
		goose.location = 0
		return goose
	end
end
