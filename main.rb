require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)
require_relative "./player"
require_relative "./pickable"
require_relative "./gear_factory"
require_relative "./supplies"
require_relative "./mystery_box"
require_relative "./checkable_number"
require_relative "./response"
require_relative "./human_player"
require_relative "./computer_player"
require_relative "./game_message"
require_relative "./game"
require_relative "./round"
require_relative "./racer"
require_relative "./power_ups"
Dir["./powerup_*.rb"].each {|file| require file }
GameMessage.intro
game = Game.new
game.start_game?
