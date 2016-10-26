class NoisyCricket < PowerUps
  def misfire
    puts "Misfire: Damn, that thing packs a punch. It knocks #{attacker.first_name} back"
    attacker.location -= (damage/2)
  end

  def hit
    puts "Hit: #{victim.first_name} didn't stand a chance. #{attacker.first_name} blasts through them like an alien roach"
    victim.location -= damage
  end

  def damage
    rand(10..20)
  end

  def damage_to_s
    "15-20"
  end

  def post_initialize
    @type = "Noisy Cricket"
  end
end
