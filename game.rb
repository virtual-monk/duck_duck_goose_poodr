class Game
  attr_reader :players
  attr_accessor :it

  def initialize()
    @players = []
    @it = nil
  end

  def start_game?
    response = Response.check(gets.chomp)
    case response
    when "affirmative"
      player_one
    when "negative"
      message.end_game
    else
      puts response
      start_game?
    end
  end

  def new_round
    round = Round.new(players: players, it: it)
    round.begin
    play_again?(round.loser)
  end

  private
  def message
    GameMessage
  end

  def welcome(player)
    message.welcome(player)
    add_players
  end

  def add_players
  	types = [HumanPlayer, ComputerPlayer]
  	types.each do |type|
	  	message.how_many_players(type)
		  how_many = gets.chomp.to_i
	    (1..how_many).each do |number|
        add_player(number, type)
      end
    end
    new_round
  end

  def add_player(number, type)
    puts "Enter player #{number}'s name"
    first_name = gets.chomp
    players << type.new(first_name: first_name)
    puts "#{first_name} added to the game"
  end

  def player_one
    message.players_name?
    player = HumanPlayer.new(first_name: gets.chomp)
    self.players << player
    welcome(player)
  end

  def play_again?(loser)
    message.play_again?
    response = Response.check(gets.chomp)
    case response
    when "affirmative"
      loser.new_round(self)
      new_round
    when "negative"
      message.end_game
    else
      puts response
      play_again?(loser)
    end
  end
end
