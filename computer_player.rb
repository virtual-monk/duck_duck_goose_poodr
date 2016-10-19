class ComputerPlayer
  attr_reader :first_name

  def initialize(first_name:)
    @first_name = first_name
  end

  def choose_goose(ducks)
  	GameMessage.is_it(self)
		player = ducks.sample
    goose = Racer.new(player: player)
  end

end
