class MarioStar < PowerUps
  def misfire
    puts "Misfire: #{attacker.first_name} isn't invincible against holes in the earth"
    attacker.location -= (damage/2)
  end

  def hit
    puts "Hit: Nothing can stop #{attacker.first_name}!"
    victim.location -= damage
  end

  def damage
    rand(20..30)
  end

  def damage_to_s
    "20-30"
  end

  def post_initialize
    @type = "Mario Star"
  end
end
