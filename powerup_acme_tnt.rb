class AcmeTnt < PowerUps
  def misfire
    puts "Misfire: Oh snap, #{victim.first_name} moved the TNT behind #{attacker.first_name}"
    attacker.location -= (damage/2)
  end

  def hit
    puts "Hit: That'll stop that pesky road runner"
    victim.location -= damage
  end

  def damage
    rand(10..20)
  end

  def damage_to_s
    "10-20"
  end

  def post_initialize
    @type = "Acme TNT"
  end
end
