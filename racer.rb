class Racer
  attr_reader :player
  attr_accessor :location, :gear
  def initialize(player:, location: 0)
    @location = location
    @player = player
    @gear = gear || equip_gear
  end

  def human?
    player.human?
  end

  def first_name
    player.first_name
  end

  def distance
    (rand(20..40) + speed_bonus)
  end

  def new_round(game)
    self.location = 30
    self.gear = equip_gear
    game.it = self
  end

  def chooses_goose(ducks)
    player.chooses_goose(ducks)
  end

  def equip_gear
    gear = GearFactory.build(gear_config)
  end

  def gear_config
    [shoes.sample, armor.sample, trinket.sample]
  end

  def trinket
    [["Pheonix feathers", 1],["Speed potions", 2],["Unicorn hairs", 3], ["Pocket lint", 0]]
  end

  def armor
    [["Flash's suit", 1],["Superman's cape", 2],["Daedric armor", 3], ["A Nickelback t-shirt", 0]]
  end

  def shoes
    [["Hermes' wingtips", 1],["Sonic's boots", 2],["QuickSilver's shoes", 3], ["Worn-out chucks", 0]]
  end

  def speed_bonus
    gear.speed_bonus
  end

  def gear_names
    gear.gear_names
  end
end
