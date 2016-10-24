class Racer
  attr_reader :player
  attr_accessor :location
  def initialize(player:, location: 0)
    @location = location
    @player = player
  end

  def distance
    rand(30..50)
  end

  def first_name
    player.first_name
  end

  def human?
    player.human?
  end

  def new_round(game)
    self.location = 30
    game.it = self
  end

  def chooses_goose(ducks)
    player.chooses_goose(ducks)
  end
end
