class Ring < PowerUps
  def misfire
    puts "Misfire: NOOO! Nazgul everywhere! #{attacker.first_name} is attacked"
    attacker.location -= (damage/2)
  end

  def hit
    puts "Hit: #{attacker.first_name} moves stealhly with the cover of the PRECIOUS"
    victim.location -= damage
  end

  def damage
    rand(25..30)
  end

  def damage_to_s
    "25-30"
  end

  def post_initialize
    @type = "One Ring"
  end
end
