class AcmeTnt < PowerUps
  def misfire
    puts "Misfire: Oh snap, the road runner moved the TNT behind #{attacker.first_name}"
  end

  def hit
    puts "Hit: That'll stop that pesky road runner"
  end

  def damage
    rand(10..20)
  end

  def post_initialize
    @type = "Acme TNT"
  end
end
