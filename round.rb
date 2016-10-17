class Round
	attr_reader :players
	attr_accessor :loser
	def initialize(players:)
		@players = players
		@loser = nil
		chase
	end

	def chase
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
		GameMessage.round_results(winner: winner, loser: loser)
		self.loser = loser
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
		it.set_it
		return it
	end

	def assign_goose
		goose = ducks.sample
		goose.set_goose
		return goose
	end
end
