class NoisyCricket < PowerUps
  def misfire
    puts "Misfire: Damn, that thing packs a punch. It knocks #{attacker.first_name} back"
  end

  def hit
    puts "Hit: Those aliens didn't stand a chance. #{attacker.first_name} blasts through them"
  end

  def damage
    rand(10..20)
  end

  def post_initialize
    @type = "Noisy Cricket"
  end
end
