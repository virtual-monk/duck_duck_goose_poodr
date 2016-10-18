class ComputerPlayer
  attr_reader :first_name

  def initialize(first_name:)
    @first_name = first_name
  end

  def self.adding_players(player_count:, players:)
    (1..player_count).each do |number|
      adding_player(number, players)
    end
  end

  def choose_goose(ducks)
  	GameMessage.is_it(self)
		player = ducks.sample
    goose = Racer.new(player: player)
  end

  private
  def self.adding_player(number, players)
    puts "Enter player #{number}'s name"
    first_name = gets.chomp
    players << ComputerPlayer.new(first_name: first_name)
    puts "#{first_name} added to the game"
  end
end
