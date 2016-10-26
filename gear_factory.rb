require 'ostruct'
class GearFactory
  def self.build(config)
    Supplies.new(config.collect {|gear_config| build_gear(gear_config)})
  end

  def self.build_gear(gear_config)
    OpenStruct.new( name: gear_config[0], speed_bonus: gear_config[1])
  end
end
