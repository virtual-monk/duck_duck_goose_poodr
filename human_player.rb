class HumanPlayer < Player
  def choose_goose(ducks)
    GameMessage.is_it(self)
    player = nil
    until !player.nil?
      GameMessage.choose_goose(ducks)
      goose_name = Response.pick_from_list(list: ducks, response: gets.chomp, attribute: first_name)
      player = ducks.select { |duck| duck.first_name == goose_name }.first
    end
    goose = Racer.new(player: player)
  end
end
