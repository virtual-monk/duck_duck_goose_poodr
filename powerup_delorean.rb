class Delorean < PowerUps
  def misfire
    puts "Misfire: Looks like #{attacker.first_name} traveled to the past, try not to kiss your mom"
  end

  def hit
    puts "Hit: That's the power of love! #{attacker.first_name} made it to the future"
  end

  def damage
    rand(15..25)
  end

  def post_initialize
    @type = "Delorean"
  end
end
