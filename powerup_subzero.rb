class Subzero < PowerUps
  def misfire
    puts "Misfire: The frost back fires and freezes #{attacker.first_name} feet to the ground..."
  end

  def hit
    puts "Hit: Frost shoots through #{attacker.first_name}'s hands and hits #{victim.first_name}"
  end

  def damage
    rand(10..15)
  end

  def post_initialize
    @type = "Sub Zero Guantlets"
  end
end
