require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)
require_relative "./player"
require_relative "./human_player"
require_relative "./computer_player"
require_relative "./game"
require_relative "./game_message"
require_relative "./round"
require_relative "./racer"
require_relative "./response"

GameMessage.intro
binding.pry
game = Game.new
game.start_game?
