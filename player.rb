class Player
	attr_reader :first_name, :human
	attr_accessor :role, :location
	def initialize(first_name:, role: "duck", location: 0, human: false)
		@first_name = first_name 
		@role = role
		@location = location
		@human = human
	end

	def speed
		rand(30..50)
	end

	def self.adding_players(player_count:, game:)
		players = []
		(1..player_count).each do |number|
			adding_player(number, game)
		end
	end

	def self.adding_player(number, game)
		puts "Enter player #{number}'s name"
		first_name = gets.chomp
		game.players << Player.new(first_name: first_name)
		puts "#{first_name} added to the game"
	end

	def reset
		self.location = 0
		self.role = "duck"
	end

	def set_it
		self.role = "it"
		self.location = 20
	end
	private
end