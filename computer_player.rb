class ComputerPlayer < Player
  def choose_goose(ducks)
  	GameMessage.is_it(self)
		player = ducks.sample
    goose = Racer.new(player: player)
  end
end
