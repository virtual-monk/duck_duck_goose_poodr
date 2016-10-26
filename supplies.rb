class Supplies
  include Enumerable
  attr_reader :supplies
  def initialize(supplies)
    @supplies = supplies
  end

  def speed_bonus
    total = 0
    supplies.select {|gear| total += gear.speed_bonus}
    total
  end

  def gear_names
    names = supplies.collect {|gear| gear.name}
    return "#{names[0]}, #{names[1]}, and #{names[2]}"
  end

  def sort_values
    supplies.sort_by {|gear| gear.speed_bonus}
    supplies.sort_by {|gear| gear.name}
  end
end
