class Racer
  attr_accessor :location, :player
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

  def new_round(game)
    self.location = 20
    game.it = self
  end

  def choose_goose(ducks)
    player.choose_goose(ducks)
  end
end
