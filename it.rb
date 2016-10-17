class It
	attr_reader :first_name
	def initialize(player:)
		@first_name = player.first_name
	end

	def choose_goose(ducks)
		if player.human?
			GameMessage.choose_goose(ducks)
		else
			assign_goose
		end
	end

	def self.location 
		20
	end

	def self.speed
		rand(30..50)
	end

	def assign_goose
		goose = ducks.sample
		goose.set_goose
		return goose
	end
end