class MysteryBox
  include Pickable

  attr_reader :attacker, :victim
  attr_accessor :powerups

  def initialize(attacker:, victim:)
    @attacker = attacker
    @victim = victim
    @powerups = all_powerups
  end

  def all_powerups
    [Delorean, AcmeTnt, Subzero, NoisyCricket, MarioStar, Ring]
  end

  def random_powerup
    powerup = powerups.sample
    powerups.delete(powerup)
    powerup.new(attacker: attacker, victim: victim)
  end

  def results
    roll = rand(100)
    if roll % 10 == 0 && attacker.human?
      powerup_list
    else
      powerup = random_powerup
      powerup.results
    end
  end

  def powerup_list
    choices = []
    3.times do |add|
      choices << random_powerup
    end
    choose_powerup(choices)
  end

  def choose_powerup(choices)
    GameMessage.choose_powerup(powerups: choices, attacker: attacker)
    powerup = pick_from_list(list: choices, response: gets.chomp) until powerup
    powerup.results
  end
end
