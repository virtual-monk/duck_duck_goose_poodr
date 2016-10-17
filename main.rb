require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)
require_relative "./player"
require_relative "./game"
require_relative "./game_message"
require_relative "./round"
require_relative "./it"

game = Game.new
game.start_game?(gets.chomp)
