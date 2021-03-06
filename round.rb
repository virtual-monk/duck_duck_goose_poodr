class Round
  attr_reader :players, :it, :goose
  attr_accessor :loser

  def initialize(players:, it:)
    @players = players
    @it = it || assign_it
    @goose = goose || assign_goose
    @loser = nil
  end

  def begin
    message.speed_bonus(it, goose)
    message.chase(goose, it)
    until  goose_wins || it_wins
      mystery_box
      message.racers_location(it, goose)
      it.location += it.distance
      goose.location += goose.distance
    end
  end

  private
  def mystery_box
    racers = [it, goose]
    attacker = racers.shuffle!.pop
    victim = racers.first
    mystery_box = MysteryBox.new(attacker: attacker, victim: victim)
    mystery_box.results
  end

  def it_wins
    if it.location >= 360
      results(loser: goose, winner: it )
      true
    end
  end

  def goose_wins
    if goose.location >= it.location
      results(loser: it, winner: goose)
      true
    end
  end

  def results(winner:, loser:)
    message.round_results(winner: winner, loser: loser)
    self.loser = loser
  end

  def ducks
    ducks = players.clone
    ducks.delete(it.player)
    return ducks
  end

  def assign_it
    player = players.sample
    it = Racer.new(player: player, location: 30)
  end

  def assign_goose
  	goose = it.chooses_goose(ducks)
  end

  def message
  	GameMessage
  end
end
