class HumanPlayer
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
    player = nil
    until !player.nil?
      GameMessage.choose_goose(ducks)
      goose_name = gets.chomp
      player = ducks.select { |duck| duck.first_name == goose_name }.first
    end
    goose = Racer.new(player: player)
  end

  private
  def self.adding_player(number, players)
    puts "Enter player #{number}'s name"
    first_name = gets.chomp
    players << HumanPlayer.new(first_name: first_name)
    puts "#{first_name} added to the game"
  end
end
