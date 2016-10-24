class ComputerPlayer < Player
  def chooses_goose(ducks)
  	GameMessage.is_it(self)
		player = ducks.sample
    goose = Racer.new(player: player)
  end

  def human?
    false
  end
end
