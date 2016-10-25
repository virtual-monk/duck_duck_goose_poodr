class HumanPlayer < Player
  def choose_goose(ducks)
    GameMessage.is_it(self)
    player = nil
    until !player.nil?
      GameMessage.choose_goose(ducks)
      player = Response.pick_from_list(list: ducks, response: gets.chomp)
    end
    goose = Racer.new(player: player)
  end
end
