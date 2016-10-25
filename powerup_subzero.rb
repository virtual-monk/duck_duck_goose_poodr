class Subzero < PowerUps
  def misfire
    puts "Misfire: The frost backfires and freezes #{attacker.first_name}'s' feet to the ground..."
    attacker.location -= (damage/2)
  end

  def hit
    puts "Hit: Frost shoots through #{attacker.first_name}'s hands and hits #{victim.first_name}"
    victim.location -= damage
  end

  def damage
    rand(10..15)
  end

  def damage_to_s
    "10-15"
  end

  def post_initialize
    @type = "Sub Zero Guantlets"
  end
end
