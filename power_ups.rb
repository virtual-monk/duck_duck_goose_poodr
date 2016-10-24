class PowerUps
  attr_reader :attacker, :victim, :results, :damage, :type
  def initialize(attacker:, victim:)
    @attacker = attacker
    @victim = victim
    post_initialize
  end

  def results
    roll = rand(20)
    puts "#{attacker.first_name} uses the #{type}"
    if roll > 10
      hit
    else
      misfire
    end
  end

  def listed_attribute
    type.capitalize
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

  def damage_to_s
    "1-15"
  end
end
