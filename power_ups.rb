class PowerUps
  attr_reader :attacker, :victim, :results, :damage, :type
  def initialize(attacker:, victim:)
    @attacker = attacker
    @victim = victim
    post_initialize
  end

  def results
    d20 = rand(20)
    puts "#{attacker.first_name} uses the #{type}"
    if d20 > 10
      hit
      victim.location -= damage
    else
      misfire
      attacker.location -= (damage/2)
    end
  end

  def post_initialize
    nil
  end

  def misfire
    puts "Misfire: Better luck next time, #{attacker.first_name}...."
  end

  def hit
    puts "Hit: Great shot, #{attacker.first_name}!!!"
  end

  def damage
    rand(1..15)
  end
end
