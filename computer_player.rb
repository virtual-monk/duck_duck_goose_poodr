class ComputerPlayer < Player
  def chooses_goose(ducks)
  	message.is_it(self)
		player = ducks.sample
    goose = Racer.new(player: player)
  end

  def human?
    false
  end

  private
  def message
    GameMessage
  end
end
