class GameMessage
  def self.intro
    puts "Hey you, wanna play Duck Duck Goose?"
  end

  def self.welcome(player)
    puts "Welcome #{player}"
  end

  def self.how_many_players(type)
    puts "How many #{type}s do you want to play against?"
  end

  def self.play_again?
    puts "Would you like to play again?"
  end

  def self.players_name?
    puts "What's your name?"
  end

  def self.end_game
    puts "T'was fun while it lasted. Later, playa!"
  end

  def self.round_results(winner:, loser:)
    puts "#{winner.first_name} wins!!!"
    puts "#{loser.first_name} loses!!!"
  end

  def self.unrecognized_input
    puts "Unable to recognize input"
  end

  def self.chase(goose, it)
    puts "#{goose.first_name} chases #{it.first_name}"
  end

  def self.is_it(player)
  	puts "#{player.first_name} is It!"
  end

  def self.choose_goose(ducks)
    puts "Choose your goose:"
    ducks.each do |duck|
      puts duck.first_name
    end
  end

  def self.speed_bonus(it, goose)
    puts "#{it.first_name} gears up with #{it.gear_names} for an added speed bonus of #{it.speed_bonus}"
    puts "#{goose.first_name} gears up with #{goose.gear_names} for an added speed bonus of #{goose.speed_bonus}"
  end

  def self.racers_location(it, goose)
    puts "IT: #{it.first_name}'s location is #{it.location}"
    puts "GOOSE: #{goose.first_name}'s location is #{goose.location}"
  end

  def self.choose_powerup(powerups:, attacker:)
    puts "POWER UP GRAB BAG"
    puts "#{attacker.first_name}, Choose your powerup!"
    powerups.each do |powerup|
      puts "#{powerup.type}"
      puts "    power: #{powerup.damage_to_s}"
    end
  end
end
