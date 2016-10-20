class Ring < PowerUps
  def misfire
    puts "Misfire: SHIT! Nazgul everywhere. #{attacker.first_name} is attacked"
  end

  def hit
    puts "Hit: #{attacker.first_name} moves stealhly with the cover of the PRECIOUSSSSS"
  end

  def damage
    rand(25..30)
  end

  def post_initialize
    @type = "One Ring"
  end
end
