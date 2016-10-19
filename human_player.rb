class HumanPlayer < Player
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
end
