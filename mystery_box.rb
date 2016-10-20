class MysteryBox
  attr_reader :message, :attacker, :victim

  def initialize(attacker:, victim:)
    @attacker = attacker
    @victim = victim
    @contents = whats_in_the_box
  end

  def whats_in_the_box
    power_ups = [Delorean, AcmeTnt, Subzero, NoisyCricket, MarioStar, Ring]
    power_up = power_ups.sample.new(attacker: attacker, victim: victim)
    power_up.results
  end
end
